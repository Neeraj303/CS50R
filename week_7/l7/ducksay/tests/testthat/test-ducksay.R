describe("ducksay()", {
  it("can print to the console with 'cat'", {
    expect_output(cat(ducksay()))
  })
  it("can say hello to the world", {
    expect_match(ducksay(), "hello, world")
  })
  it("can say hello with a duck", {
    duck <- paste(
      ">(. )__",
      " (____/",
      sep = "\n"
    )
    expect_match(ducksay(), duck, fixed = TRUE)
  })
  it("can say any given phrase", {
    expect_match(ducksay("quack!"), "quack!")
  })
})
