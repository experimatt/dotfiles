StepJumper = require "../lib/step-jumper"

describe "jumping", ->
  beforeEach ->
    @stepJumper = new StepJumper("  Given I have a cheese")

  describe "stepTypeRegex", ->
    it "should match right step types", ->
      expect("Given(/I have a cheese/)".match(@stepJumper.stepTypeRegex())).toBeTruthy()
    it "should not match wrong step types", ->
      expect("With(/I have a cheese/)".match(@stepJumper.stepTypeRegex())).toBeFalsy()

  describe "checkMatch", ->
    beforeEach ->
      @match1 =
        matchText: "Given(/^some other random crap$/)"
        range: [[10, 0], [15, 0]]
      @match2 =
        matchText: "Given(/^I have a cheese$/)"
        range: [[20, 0], [25, 0]]
      @scanMatch =
        filePath: "path/to/file"
        matches: [@match1, @match2]
    it "should return file and line", ->
      expect(@stepJumper.checkMatch(@scanMatch)).toEqual(["path/to/file", 20])

  describe "checkMatch no brackets", ->
    beforeEach ->
      @match =
        matchText: "Given /^I have a cheese$/"
        range: [[20, 0], [25, 0]]
      @scanMatch =
        filePath: "path/to/file"
        matches: [@match]
    it "should return file and line", ->
      expect(@stepJumper.checkMatch(@scanMatch)).toEqual(["path/to/file", 20])

  describe "checkMatch invalid regex", ->
    beforeEach ->
      @match1 =
        matchText: "Given(/invalid regex [/)"
        range: [[10, 0], [15, 0]]
      @match2 =
        matchText: "Given(/^I have a cheese$/)"
        range: [[20, 0], [25, 0]]
      @scanMatch =
        filePath: "path/to/file"
        matches: [@match1, @match2]
    it "should return file and line", ->
      expect(@stepJumper.checkMatch(@scanMatch)).toEqual(["path/to/file", 20])

  describe "checkMatch no match", ->
    beforeEach ->
      @match =
        matchText: "Given(/^I don't have a cheese$/)"
        range: [[20, 0], [25, 0]]
      @scanMatch =
        filePath: "path/to/file"
        matches: [@match]
    it "should return undefined", ->
      expect(@stepJumper.checkMatch(@scanMatch)).toEqual(undefined)
