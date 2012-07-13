.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .locals 1
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 432
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .locals 5
    .parameter "editable"
    .parameter "offset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p3, spans:[Ljava/lang/Object;,"[TT;"
    array-length v2, p3

    .line 557
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 558
    aget-object v3, p3, v1

    .line 559
    .local v3, span:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 560
    .local v4, start:I
    if-le v4, p2, :cond_1

    .line 557
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_1
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 562
    .local v0, end:I
    if-lt v0, p2, :cond_0

    .line 563
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 565
    .end local v0           #end:I
    .end local v3           #span:Ljava/lang/Object;,"TT;"
    .end local v4           #start:I
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public init(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v2, 0x21

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 438
    return-void
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 21

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Editable;

    .line 451
    .local v4, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 452
    .local v12, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 454
    .local v5, end:I
    add-int/lit16 v0, v12, 0x15e

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 455
    .local v16, wordIteratorWindowEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v4, v12, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v17

    .line 460
    .local v17, wordStart:I
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->following(I)I

    move-result v15

    .line 462
    .local v15, wordEnd:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v17

    .line 468
    :cond_0
    :goto_0
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 553
    :goto_1
    return-void

    .line 466
    .end local v15           #wordEnd:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v15

    .restart local v15       #wordEnd:I
    goto :goto_0

    .line 475
    :cond_2
    add-int/lit8 v18, v12, -0x1

    add-int/lit8 v19, v5, 0x1

    const-class v20, Landroid/text/style/SpellCheckSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/SpellCheckSpan;

    .line 477
    .local v11, spellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    add-int/lit8 v18, v12, -0x1

    add-int/lit8 v19, v5, 0x1

    const-class v20, Landroid/text/style/SuggestionSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/SuggestionSpan;

    .line 480
    .local v13, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v14, 0x0

    .line 481
    .local v14, wordCount:I
    const/4 v8, 0x0

    .line 483
    .local v8, scheduleOtherSpellCheck:Z
    :cond_3
    move/from16 v0, v17

    if-gt v0, v5, :cond_4

    .line 484
    if-lt v15, v12, :cond_b

    move/from16 v0, v17

    if-le v15, v0, :cond_b

    .line 485
    const/16 v18, 0x32

    move/from16 v0, v18

    if-lt v14, v0, :cond_5

    .line 486
    const/4 v8, 0x1

    .line 546
    :cond_4
    :goto_2
    if-eqz v8, :cond_10

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v4, v0, v1, v5, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 552
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #calls: Landroid/widget/SpellChecker;->spellCheck()V
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)V

    goto :goto_1

    .line 492
    :cond_5
    move/from16 v0, v17

    if-ge v0, v12, :cond_6

    if-le v15, v12, :cond_6

    .line 493
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 494
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 497
    :cond_6
    move/from16 v0, v17

    if-ge v0, v5, :cond_7

    if-le v15, v5, :cond_7

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 499
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 503
    :cond_7
    const/4 v3, 0x1

    .line 504
    .local v3, createSpellCheckSpan:Z
    if-ne v15, v12, :cond_8

    .line 505
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_8

    .line 506
    aget-object v18, v11, v6

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 507
    .local v9, spanEnd:I
    if-ne v9, v12, :cond_e

    .line 508
    const/4 v3, 0x0

    .line 514
    .end local v6           #i:I
    .end local v9           #spanEnd:I
    :cond_8
    move/from16 v0, v17

    if-ne v0, v5, :cond_9

    .line 515
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    .line 516
    aget-object v18, v11, v6

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 517
    .local v10, spanStart:I
    if-ne v10, v5, :cond_f

    .line 518
    const/4 v3, 0x0

    .line 524
    .end local v6           #i:I
    .end local v10           #spanStart:I
    :cond_9
    if-eqz v3, :cond_a

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V
    invoke-static {v0, v4, v1, v15}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 527
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 531
    .end local v3           #createSpellCheckSpan:Z
    :cond_b
    move v7, v15

    .line 532
    .local v7, originalWordEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/text/method/WordIterator;->following(I)I

    move-result v15

    .line 533
    move/from16 v0, v16

    if-ge v0, v5, :cond_d

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_c

    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    .line 535
    :cond_c
    add-int/lit16 v0, v7, 0x15e

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v4, v7, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/text/method/WordIterator;->following(I)I

    move-result v15

    .line 539
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_4

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v18 .. v18}, Landroid/widget/SpellChecker;->access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v17

    .line 541
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    goto/16 :goto_2

    .line 505
    .end local v7           #originalWordEnd:I
    .restart local v3       #createSpellCheckSpan:Z
    .restart local v6       #i:I
    .restart local v9       #spanEnd:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 515
    .end local v9           #spanEnd:I
    .restart local v10       #spanStart:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 549
    .end local v3           #createSpellCheckSpan:Z
    .end local v6           #i:I
    .end local v10           #spanStart:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method
