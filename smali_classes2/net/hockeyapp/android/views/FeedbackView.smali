.class public Lnet/hockeyapp/android/views/FeedbackView;
.super Landroid/widget/LinearLayout;
.source "FeedbackView.java"


# static fields
.field public static final ADD_ATTACHMENT_BUTTON_ID:I = 0x2010

.field public static final ADD_RESPONSE_BUTTON_ID:I = 0x20010

.field public static final EMAIL_EDIT_TEXT_ID:I = 0x2004

.field public static final FEEDBACK_SCROLLVIEW_ID:I = 0x20017

.field public static final LAST_UPDATED_TEXT_VIEW_ID:I = 0x2000

.field public static final MESSAGES_LISTVIEW_ID:I = 0x20016

.field public static final NAME_EDIT_TEXT_ID:I = 0x2002

.field public static final REFRESH_BUTTON_ID:I = 0x20011

.field public static final SEND_FEEDBACK_BUTTON_ID:I = 0x2009

.field public static final SUBJECT_EDIT_TEXT_ID:I = 0x2006

.field public static final TEXT_EDIT_TEXT_ID:I = 0x2008

.field public static final WRAPPER_BASE_ID:I = 0x20012

.field public static final WRAPPER_LAYOUT_ATTACHMENTS:I = 0x2011

.field public static final WRAPPER_LAYOUT_BUTTONS_ID:I = 0x20014

.field public static final WRAPPER_LAYOUT_FEEDBACK_AND_MESSAGES_ID:I = 0x20015

.field public static final WRAPPER_LAYOUT_FEEDBACK_ID:I = 0x20013


# instance fields
.field private feedbackScrollView:Landroid/widget/ScrollView;

.field private messagesListView:Landroid/widget/ListView;

.field private wrapperBase:Landroid/widget/LinearLayout;

.field private wrapperLayoutAttachments:Landroid/view/ViewGroup;

.field private wrapperLayoutButtons:Landroid/widget/LinearLayout;

.field private wrapperLayoutFeedback:Landroid/widget/LinearLayout;

.field private wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadLayoutParams(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadWrapperBase(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadFeedbackScrollView(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadWrapperLayoutFeedback(Landroid/content/Context;)V

    .line 101
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadWrapperLayoutFeedbackAndMessages(Landroid/content/Context;)V

    .line 103
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadNameInput(Landroid/content/Context;)V

    .line 104
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadEmailInput(Landroid/content/Context;)V

    .line 105
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadSubjectInput(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadTextInput(Landroid/content/Context;)V

    .line 107
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadAttachmentList(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadAddAttachmentButton(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadSendFeedbackButton(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadLastUpdatedLabel(Landroid/content/Context;)V

    .line 113
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadWrapperLayoutButtons(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadAddResponseButton(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadRefreshButton(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->loadMessagesListView(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private getButtonSelector()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 444
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 445
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 446
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 447
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 448
    return-object v0

    .line 446
    :array_0
    .array-data 4
        -0x10100a7
        0x101009c
    .end array-data
.end method

.method private getEditTextBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 464
    .local v3, "outerPadding":I
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 465
    .local v5, "outerShape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 466
    .local v4, "outerPaint":Landroid/graphics/Paint;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 472
    .local v0, "innerPadding":I
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 473
    .local v2, "innerShape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 474
    .local v1, "innerPaint":Landroid/graphics/Paint;
    const v6, -0xbbbbbc

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 477
    invoke-virtual {v2, v10, v10, v10, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 479
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v7, v10

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method private loadAddAttachmentButton(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 345
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 346
    .local v0, "button":Landroid/widget/Button;
    const/16 v5, 0x2010

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setId(I)V

    .line 348
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 349
    .local v3, "paddingTopBottom":I
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v2, v5

    .line 350
    .local v2, "paddingLeftRight":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    .line 352
    .local v1, "margin":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 354
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v8, v8, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 355
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 357
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    invoke-direct {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 360
    const/16 v5, 0x407

    invoke-static {v5}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 362
    const/4 v5, 0x2

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 364
    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method private loadAddResponseButton(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 393
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "button":Landroid/widget/Button;
    const v5, 0x20010

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setId(I)V

    .line 396
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 397
    .local v3, "paddingTopBottom":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    .line 398
    .local v1, "margin":I
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v2, v5

    .line 400
    .local v2, "marginRight":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v7, v7, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 403
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 404
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 406
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-direct {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    invoke-virtual {v0, v7, v3, v7, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 409
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 410
    const/16 v5, 0x409

    invoke-static {v5}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 412
    const/4 v5, 0x2

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 414
    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method private loadAttachmentList(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 330
    new-instance v2, Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-direct {v2, p1}, Lnet/hockeyapp/android/views/AttachmentListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutAttachments:Landroid/view/ViewGroup;

    .line 331
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutAttachments:Landroid/view/ViewGroup;

    const/16 v3, 0x2011

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 333
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 335
    .local v0, "paddingTopBottom":I
    const/4 v2, 0x3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 337
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutAttachments:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutAttachments:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v5, v5, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 340
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutAttachments:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    return-void
.end method

.method private loadEmailInput(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, "editText":Landroid/widget/EditText;
    const/16 v3, 0x2004

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 243
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 245
    .local v1, "margin":I
    invoke-virtual {v2, v5, v5, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 249
    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 250
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 251
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 252
    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 253
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 254
    const/16 v3, 0x403

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 255
    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 256
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 258
    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method private loadFeedbackScrollView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 142
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->feedbackScrollView:Landroid/widget/ScrollView;

    .line 143
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->feedbackScrollView:Landroid/widget/ScrollView;

    const v3, 0x20017

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setId(I)V

    .line 145
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 147
    .local v0, "padding":I
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->feedbackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->feedbackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 152
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->feedbackScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private loadLastUpdatedLabel(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 309
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 310
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 312
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 313
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 314
    .local v0, "margin":I
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    invoke-virtual {v2, v5, v0, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 318
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 319
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 320
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 321
    const/16 v3, 0x406

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 324
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 326
    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method private loadLayoutParams(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 121
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackView;->setBackgroundColor(I)V

    .line 123
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method

.method private loadMessagesListView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 204
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->messagesListView:Landroid/widget/ListView;

    .line 205
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->messagesListView:Landroid/widget/ListView;

    const v3, 0x20016

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    .line 207
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 211
    .local v0, "padding":I
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5, v0, v5, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 214
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method private loadNameInput(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "editText":Landroid/widget/EditText;
    const/16 v3, 0x2002

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 221
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 223
    .local v1, "margin":I
    invoke-virtual {v2, v5, v5, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 227
    const/16 v3, 0x4001

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 228
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 229
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 230
    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 232
    const/16 v3, 0x402

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 233
    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 234
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 236
    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    return-void
.end method

.method private loadRefreshButton(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 419
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, "button":Landroid/widget/Button;
    const v5, 0x20011

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setId(I)V

    .line 422
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 423
    .local v3, "paddingTopBottom":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    .line 424
    .local v1, "margin":I
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v2, v5

    .line 426
    .local v2, "marginLeft":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v7, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 429
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 431
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    invoke-direct {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    invoke-virtual {v0, v7, v3, v7, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 434
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 435
    const/16 v5, 0x40a

    invoke-static {v5}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 437
    const/4 v5, 0x2

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 438
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 440
    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    return-void
.end method

.method private loadSendFeedbackButton(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 369
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, "button":Landroid/widget/Button;
    const/16 v5, 0x2009

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setId(I)V

    .line 372
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 373
    .local v3, "paddingTopBottom":I
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v2, v5

    .line 374
    .local v2, "paddingLeftRight":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    .line 376
    .local v1, "margin":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v8, v8, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 379
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 381
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    invoke-direct {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 384
    const/16 v5, 0x408

    invoke-static {v5}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 386
    const/4 v5, 0x2

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 388
    iget-object v5, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    return-void
.end method

.method private loadSubjectInput(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 262
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, "editText":Landroid/widget/EditText;
    const/16 v3, 0x2006

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 265
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 267
    .local v1, "margin":I
    invoke-virtual {v2, v5, v5, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 271
    const/16 v3, 0x4031

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 272
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 273
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 274
    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 275
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 276
    const/16 v3, 0x404

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 277
    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 278
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 280
    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    return-void
.end method

.method private loadTextInput(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 284
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "editText":Landroid/widget/EditText;
    const/16 v4, 0x2008

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setId(I)V

    .line 287
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 290
    .local v1, "margin":I
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v2, v4

    .line 291
    .local v2, "minEditTextHeight":I
    invoke-virtual {v3, v6, v6, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 295
    const/16 v4, 0x4001

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 296
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 297
    const v4, -0x777778

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 298
    const/4 v4, 0x2

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 299
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 300
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 301
    const/16 v4, 0x405

    invoke-static {v4}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 302
    const v4, -0x333334

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 303
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 305
    iget-object v4, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method private loadWrapperBase(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 127
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    .line 128
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    const v3, 0x20012

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 130
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 132
    .local v0, "padding":I
    const/16 v2, 0x31

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v0, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackView;->addView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method private loadWrapperLayoutButtons(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 188
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    .line 189
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    const v3, 0x20014

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 191
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 193
    .local v0, "padding":I
    const/4 v2, 0x3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 195
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v0, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 197
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 198
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method private loadWrapperLayoutFeedback(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 156
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    .line 157
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    const v3, 0x20013

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 159
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 161
    .local v0, "padding":I
    const/4 v2, 0x3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 166
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->feedbackScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method private loadWrapperLayoutFeedbackAndMessages(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 172
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    .line 173
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    const v3, 0x20015

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 175
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 177
    .local v0, "padding":I
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 179
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 181
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperBase:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/hockeyapp/android/views/FeedbackView;->wrapperLayoutFeedbackAndMessages:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 453
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->getEditTextBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    :cond_0
    return-void
.end method
