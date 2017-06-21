.class public Lcom/vkcoffee/android/telegramutils/PasscodeView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;,
        Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;
    }
.end annotation


# static fields
.field private static final id_fingerprint_imageview:I = 0x3e9

.field private static final id_fingerprint_textview:I = 0x3e8


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundFrameLayout:Landroid/widget/FrameLayout;

.field private cancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field private checkImage:Landroid/widget/ImageView;

.field private delegate:Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;

.field private eraseView:Landroid/widget/ImageView;

.field private fingerprintDialog:Landroid/app/AlertDialog;

.field private fingerprintImageView:Landroid/widget/ImageView;

.field private fingerprintStatusTextView:Landroid/widget/TextView;

.field igetter:Landroid/text/Html$ImageGetter;

.field private keyboardHeight:I

.field private lettersTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numberFrameLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private numberTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numbersFrameLayout:Landroid/widget/FrameLayout;

.field private passcodeTextView:Landroid/widget/TextView;

.field private passwordEditText:Landroid/widget/EditText;

.field private passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

.field private passwordFrameLayout:Landroid/widget/FrameLayout;

.field private rect:Landroid/graphics/Rect;

.field private selfCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v5, Lcom/vkcoffee/android/telegramutils/PasscodeView$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$1;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->igetter:Landroid/text/Html$ImageGetter;

    .line 431
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->keyboardHeight:I

    .line 439
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->rect:Landroid/graphics/Rect;

    .line 449
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setWillNotDraw(Z)V

    .line 450
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setVisibility(I)V

    .line 452
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    .line 453
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->addView(Landroid/view/View;)V

    .line 454
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 456
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 457
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    .line 460
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->addView(Landroid/view/View;)V

    .line 461
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 462
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 463
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 464
    const/16 v5, 0x33

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 465
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    .line 484
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 487
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 488
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 490
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 491
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 492
    const/4 v5, -0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 493
    const/high16 v5, 0x42780000    # 62.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 494
    const/16 v5, 0x51

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 495
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    new-instance v5, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-direct {v5, p0, p1}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    .line 498
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 499
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 500
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 501
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 502
    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 503
    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 504
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 505
    const/16 v5, 0x51

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 506
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-virtual {v5, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    .line 509
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x1

    const/high16 v7, 0x42100000    # 36.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 510
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 511
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 512
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLines(I)V

    .line 513
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 514
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 515
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 516
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 517
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 519
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 520
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 521
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 522
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 523
    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 524
    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 525
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 526
    const/16 v5, 0x51

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 527
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/vkcoffee/android/telegramutils/PasscodeView$2;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$2;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 538
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/vkcoffee/android/telegramutils/PasscodeView$3;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$3;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 556
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/vkcoffee/android/telegramutils/PasscodeView$4;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$4;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 573
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    .line 574
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const v6, 0x7f0200ad

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 575
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 576
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const v6, 0x7f02031e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 577
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 578
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 579
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 580
    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 581
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 582
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 583
    const/16 v5, 0x55

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 584
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/vkcoffee/android/telegramutils/PasscodeView$5;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$5;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 593
    .local v3, "lineFrameLayout":Landroid/widget/FrameLayout;
    const v5, 0x26ffffff

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 594
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 595
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 596
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 597
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 598
    const/16 v5, 0x53

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 599
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 600
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 601
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    .line 604
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->addView(Landroid/view/View;)V

    .line 605
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 606
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 607
    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 608
    const/16 v5, 0x33

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 609
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    .line 612
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    .line 613
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    .line 614
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    .line 671
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    .line 672
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 673
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    const v6, 0x7f020155

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 674
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 675
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 676
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 677
    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 678
    const/16 v5, 0x33

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 679
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    const/4 v0, 0x0

    :goto_1
    const/16 v5, 0xb

    if-lt v0, v5, :cond_1

    .line 740
    const/16 v0, 0xa

    :goto_2
    if-gez v0, :cond_3

    .line 749
    return-void

    .line 615
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 616
    .local v4, "textView":Landroid/widget/TextView;
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    const/4 v5, 0x1

    const/high16 v6, 0x42100000    # 36.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 618
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 619
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 621
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 623
    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 624
    const/16 v5, 0x33

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 625
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "textView":Landroid/widget/TextView;
    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 629
    .restart local v4    # "textView":Landroid/widget/TextView;
    const/4 v5, 0x1

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 630
    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 632
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 633
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 634
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 635
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 636
    const/16 v5, 0x33

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 637
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    packed-switch v0, :pswitch_data_0

    .line 669
    :goto_3
    :pswitch_0
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 640
    :pswitch_1
    const-string v5, "+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 643
    :pswitch_2
    const-string v5, "ABC"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 646
    :pswitch_3
    const-string v5, "DEF"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 649
    :pswitch_4
    const-string v5, "GHI"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 652
    :pswitch_5
    const-string v5, "JKL"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 655
    :pswitch_6
    const-string v5, "MNO"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 658
    :pswitch_7
    const-string v5, "PQRS"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 661
    :pswitch_8
    const-string v5, "TUV"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 664
    :pswitch_9
    const-string v5, "WXYZ"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 681
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 682
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    const v5, 0x7f02031e

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 683
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 684
    const/16 v5, 0xa

    if-ne v0, v5, :cond_2

    .line 685
    new-instance v5, Lcom/vkcoffee/android/telegramutils/PasscodeView$6;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$6;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 694
    :cond_2
    new-instance v5, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 741
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 742
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 743
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 744
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 745
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 746
    const/16 v5, 0x33

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 747
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView;Z)V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->processDone(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/telegramutils/PasscodeView;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/telegramutils/PasscodeView;FI)V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->shakeTextView(FI)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/support/v4/os/CancellationSignal;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/telegramutils/PasscodeView;Z)V
    .locals 0

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->selfCancelled:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/telegramutils/PasscodeView;Landroid/support/v4/os/CancellationSignal;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->selfCancelled:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/telegramutils/PasscodeView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private checkFingerprint()V
    .locals 17

    .prologue
    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    .line 872
    .local v14, "parentActivity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->finger()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v1

    .line 881
    :cond_1
    :try_start_1
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v11

    .line 882
    .local v11, "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v11}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    new-instance v15, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 884
    .local v15, "relativeLayout":Landroid/widget/RelativeLayout;
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v15, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 886
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 887
    .local v12, "fingerprintTextView":Landroid/widget/TextView;
    const v1, -0x6c6c6d

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    const/16 v1, 0x3e8

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setId(I)V

    .line 889
    const v1, 0x1030208

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 890
    const-string v1, "\u041f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u0435 \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043e\u043a \u043f\u0430\u043b\u044c\u0446\u0430 \u0434\u043b\u044f \u043f\u0440\u043e\u0434\u043e\u043b\u0436\u0435\u043d\u0438\u044f"

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 892
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/telegramutils/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    .line 893
    .local v13, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 894
    const/16 v1, 0x14

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 895
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    .line 898
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const v2, 0x7f020321

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 899
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x3

    const/16 v9, 0x3e8

    invoke-static/range {v1 .. v9}, Lcom/vkcoffee/android/telegramutils/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    .line 903
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 904
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const-string v2, "\u0421\u043a\u0430\u043d\u0435\u0440 \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043a\u043e\u0432 \u043f\u0430\u043b\u044c\u0446\u0435\u0432"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v2, 0x10301f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 908
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/telegramutils/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    .line 909
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 910
    const/16 v1, 0x8

    const/16 v2, 0x3e9

    invoke-virtual {v13, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 911
    const/4 v1, 0x6

    const/16 v2, 0x3e9

    invoke-virtual {v13, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 912
    const/16 v1, 0x11

    const/16 v2, 0x3e9

    invoke-virtual {v13, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    new-instance v10, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 916
    .local v10, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v1, "VK Coffee"

    invoke-virtual {v10, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 917
    invoke-virtual {v10, v15}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 918
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 919
    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0438\u0442\u044c"

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 920
    new-instance v1, Lcom/vkcoffee/android/telegramutils/PasscodeView$10;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$10;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v10, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    .line 932
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 939
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    .line 941
    new-instance v1, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v1}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 942
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->selfCancelled:Z

    .line 943
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    new-instance v5, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$11;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    .line 973
    const/4 v6, 0x0

    move-object v1, v11

    .line 943
    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 975
    .end local v10    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .end local v11    # "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .end local v12    # "fingerprintTextView":Landroid/widget/TextView;
    .end local v13    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "relativeLayout":Landroid/widget/RelativeLayout;
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 935
    .restart local v10    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .restart local v11    # "fingerprintManager":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .restart local v12    # "fingerprintTextView":Landroid/widget/TextView;
    .restart local v13    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v15    # "relativeLayout":Landroid/widget/RelativeLayout;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private onPasscodeError()V
    .locals 4

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 824
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 825
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 827
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->shakeTextView(FI)V

    .line 828
    return-void
.end method

.method private processDone(Z)V
    .locals 9
    .param p1, "fingerprint"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 756
    const-string v1, ""

    .line 757
    .local v1, "password":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 760
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->getString()Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->onPasscodeError()V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-static {v1}, Lcom/vkcoffee/android/PinCodeData;->checkPinCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2, v6}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$5(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;Z)V

    .line 771
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->failed()V

    .line 772
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->onPasscodeError()V

    .line 774
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<br/><img src=\'1\'/><br/>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getApt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->igetter:Landroid/text/Html$ImageGetter;

    invoke-static {v3, v4, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 778
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 779
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 781
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 782
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 783
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    .line 784
    const-string v3, "translationY"

    new-array v4, v6, [F

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    .line 785
    const-string v3, "alpha"

    new-array v4, v6, [F

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    .line 783
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 786
    new-instance v2, Lcom/vkcoffee/android/telegramutils/PasscodeView$8;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$8;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 792
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 797
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 798
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->delegate:Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;

    if-eqz v2, :cond_0

    .line 799
    const-string v2, "1488"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const-string v3, "\"\u041c\u044b \u0434\u043e\u043b\u0436\u043d\u044b \u0437\u0430\u0449\u0438\u0442\u0438\u0442\u044c \u0441\u0430\u043c\u043e \u0441\u0443\u0449\u0435\u0441\u0442\u0432\u043e\u0432\u0430\u043d\u0438\u0435 \u043d\u0430\u0448\u0435\u0433\u043e \u043d\u0430\u0440\u043e\u0434\u0430 \u0438 \u0431\u0443\u0434\u0443\u0449\u0435\u0435 \u0434\u043b\u044f \u0431\u0435\u043b\u044b\u0445 \u0434\u0435\u0442\u0435\u0439\""

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 802
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->delegate:Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;

    invoke-interface {v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;->didAcceptedPassword()V

    goto/16 :goto_0
.end method

.method private shakeTextView(FI)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 807
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 820
    :goto_0
    return-void

    .line 810
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 811
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const-string v3, "translationX"

    new-array v4, v4, [F

    invoke-static {p1}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 812
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 813
    new-instance v1, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkcoffee/android/telegramutils/PasscodeView$9;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 819
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private showFingerprintError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v2, -0xbaee2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1040
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1041
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 1042
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1044
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 1045
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 1162
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 1166
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_1

    .line 1167
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1168
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1170
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 1171
    .local v2, "scaleX":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->keyboardHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 1172
    .local v3, "scaleY":F
    cmpg-float v7, v2, v3

    if-gez v7, :cond_2

    move v1, v3

    .line 1173
    .local v1, "scale":F
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 1174
    .local v4, "width":I
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 1175
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    .line 1176
    .local v5, "x":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    iget v8, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->keyboardHeight:I

    add-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 1177
    .local v6, "y":I
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v5, v4

    add-int v9, v6, v0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1178
    iget-object v7, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0    # "height":I
    .end local v1    # "scale":F
    .end local v4    # "width":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    move v1, v2

    .line 1172
    goto :goto_1

    .line 1181
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v2, v3

    invoke-static {v0}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1144
    .local v1, "usableViewHeight":I
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1145
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    iput v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->keyboardHeight:I

    .line 1157
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1158
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1049
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 1050
    .local v16, "width":I
    sget-object v17, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v17, 0x0

    :goto_0
    sub-int v5, v18, v17

    .line 1054
    .local v5, "height":I
    sget-boolean v17, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1056
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1057
    const/high16 v17, 0x43480000    # 200.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1058
    const/high16 v17, 0x43480000    # 200.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1062
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1063
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1064
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    sub-int v17, v5, v17

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1065
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    :goto_1
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v17, v0

    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v18

    mul-int/lit8 v18, v18, 0x3

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x4

    .line 1097
    .local v11, "sizeBetweenNumbersX":I
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v18

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    div-int/lit8 v12, v17, 0x5

    .line 1099
    .local v12, "sizeBetweenNumbersY":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v2, v0, :cond_4

    .line 1137
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1138
    return-void

    .line 1050
    .end local v2    # "a":I
    .end local v5    # "height":I
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "sizeBetweenNumbersX":I
    .end local v12    # "sizeBetweenNumbersY":I
    :cond_0
    sget v17, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_0

    .line 1068
    .restart local v5    # "height":I
    :cond_1
    const/4 v15, 0x0

    .line 1069
    .local v15, "top":I
    const/4 v8, 0x0

    .line 1070
    .local v8, "left":I
    sget-boolean v17, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v17, :cond_3

    .line 1071
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 1072
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v16, v17

    div-int/lit8 v8, v17, 0x2

    .line 1073
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v16

    .line 1075
    :cond_2
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    if-le v5, v0, :cond_3

    .line 1076
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v15, v17, 0x2

    .line 1077
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1080
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1081
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v17, v5, 0x3

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1082
    move/from16 v0, v16

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1083
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1084
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1089
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v17, v5, 0x3

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1090
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1091
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    sub-int v17, v5, v17

    add-int v17, v17, v15

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1092
    move/from16 v0, v16

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1102
    .end local v8    # "left":I
    .end local v15    # "top":I
    .restart local v2    # "a":I
    .restart local v11    # "sizeBetweenNumbersX":I
    .restart local v12    # "sizeBetweenNumbersY":I
    :cond_4
    if-nez v2, :cond_5

    .line 1103
    const/16 v9, 0xa

    .line 1109
    .local v9, "num":I
    :goto_3
    div-int/lit8 v10, v9, 0x3

    .line 1110
    .local v10, "row":I
    rem-int/lit8 v3, v9, 0x3

    .line 1112
    .local v3, "col":I
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1114
    .local v13, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1115
    .local v14, "textView1":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1116
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1117
    .local v7, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v12

    mul-int v17, v17, v10

    add-int v15, v12, v17

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v15, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1118
    .restart local v15    # "top":I
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v11

    mul-int v17, v17, v3

    add-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1119
    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    const/high16 v18, 0x42200000    # 40.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1120
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    .end local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "textView":Landroid/widget/TextView;
    .end local v14    # "textView1":Landroid/widget/TextView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1131
    .local v4, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1132
    .restart local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x41880000    # 17.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v15, v17

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1133
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    const/high16 v18, 0x41c80000    # 25.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1134
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1104
    .end local v3    # "col":I
    .end local v4    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "num":I
    .end local v10    # "row":I
    .end local v15    # "top":I
    :cond_5
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v2, v0, :cond_6

    .line 1105
    const/16 v9, 0xb

    .line 1106
    .restart local v9    # "num":I
    goto/16 :goto_3

    .line 1107
    .end local v9    # "num":I
    :cond_6
    add-int/lit8 v9, v2, -0x1

    .restart local v9    # "num":I
    goto/16 :goto_3

    .line 1123
    .restart local v3    # "col":I
    .restart local v10    # "row":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1124
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v12

    mul-int v17, v17, v10

    add-int v17, v17, v12

    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v15, v17, v18

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1125
    .restart local v15    # "top":I
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v11

    mul-int v17, v17, v3

    add-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1126
    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v15, v15, v17

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->eraseView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 855
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->fingerprintDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 861
    :cond_1
    :goto_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 868
    :cond_2
    :goto_1
    return-void

    .line 865
    :catch_0
    move-exception v0

    goto :goto_1

    .line 856
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkFingerprint()V

    .line 847
    return-void
.end method

.method public onShow()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 982
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 984
    .local v1, "parentActivity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 985
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 986
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 988
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 992
    .end local v0    # "currentFocus":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkFingerprint()V

    .line 993
    invoke-virtual {p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1032
    :goto_0
    return-void

    .line 996
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setAlpha(F)V

    .line 997
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setTranslationY(F)V

    .line 1001
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const-string v3, "#5181B8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1011
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<br/><img src=\'1\'/><br/>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getApt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->igetter:Landroid/text/Html$ImageGetter;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1016
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1017
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->setVisibility(I)V

    .line 1018
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1021
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setVisibility(I)V

    .line 1022
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1023
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v2, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->passwordEditText2:Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    invoke-static {v2, v6}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->access$5(Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;Z)V

    .line 1026
    new-instance v2, Lcom/vkcoffee/android/telegramutils/PasscodeView$12;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/telegramutils/PasscodeView$12;-><init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setDelegate(Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView;->delegate:Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;

    .line 753
    return-void
.end method
