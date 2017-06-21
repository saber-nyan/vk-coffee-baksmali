.class public Lcom/fourmob/datetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOUR_INDEX:I = 0x0

.field private static final HOUR_VALUE_TO_DEGREES_STEP_SIZE:I = 0x1e

.field private static final MINUTE_INDEX:I = 0x1

.field private static final MINUTE_VALUE_TO_DEGREES_STEP_SIZE:I = 0x6

.field private static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadialPickerLayout"

.field private static final VISIBLE_DEGREES_STEP_SIZE:I = 0x1e


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

.field private mCircleView:Lcom/fourmob/datetimepicker/time/CircleView;

.field private mCurrentHoursOfDay:I

.field private mCurrentItemShowing:I

.field private mCurrentMinutes:I

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHideAmPm:Z

.field private mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:I

.field private mLastVibrate:J

.field private mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Landroid/animation/AnimatorSet;

.field private mVibrate:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mVibrate:Z

    .line 86
    iput v4, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-virtual {p0, p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 106
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    .line 108
    iput-boolean v5, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 110
    new-instance v1, Lcom/fourmob/datetimepicker/time/CircleView;

    invoke-direct {v1, p1}, Lcom/fourmob/datetimepicker/time/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/fourmob/datetimepicker/time/CircleView;

    .line 111
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/fourmob/datetimepicker/time/CircleView;

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v1, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-direct {v1, p1}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    .line 114
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/fourmob/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    .line 117
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/fourmob/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    .line 119
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v1, Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    .line 122
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v1, Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    .line 124
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->preparePrefer30sMap()V

    .line 129
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mVibrator:Landroid/os/Vibrator;

    .line 130
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastVibrate:J

    .line 131
    iput v4, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 133
    iput-boolean v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 134
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fourmob/datetimepicker/R$color;->transparent_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 141
    const-string/jumbo v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 143
    iput-boolean v5, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 47
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return v0
.end method

.method static synthetic access$100(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;)Lcom/fourmob/datetimepicker/time/AmPmCirclesView;
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 47
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    return v0
.end method

.method static synthetic access$400(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;IZZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    return p1
.end method

.method static synthetic access$600(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 275
    .local v0, "currentIndex":I
    if-nez v0, :cond_0

    .line 276
    iget v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 280
    :goto_0
    return v1

    .line 277
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 278
    iget v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 2
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 500
    .local v0, "currentItem":I
    if-nez v0, :cond_0

    .line 501
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    .line 507
    :goto_0
    return v1

    .line 503
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    goto :goto_0

    .line 507
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isHourInnerCircle(I)Z
    .locals 1
    .param p1, "hourOfDay"    # I

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preparePrefer30sMap()V
    .locals 6

    .prologue
    const/16 v5, 0x169

    .line 345
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    .line 348
    const/4 v3, 0x0

    .line 350
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 354
    .local v0, "count":I
    const/16 v2, 0x8

    .line 356
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 358
    iget-object v4, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 361
    if-ne v0, v2, :cond_2

    .line 362
    add-int/lit8 v3, v3, 0x6

    .line 363
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 364
    const/4 v2, 0x7

    .line 370
    :goto_1
    const/4 v0, 0x1

    .line 356
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 366
    const/16 v2, 0xe

    goto :goto_1

    .line 368
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 372
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    :cond_3
    return-void
.end method

.method private reselectSelector(IZZZ)I
    .locals 8
    .param p1, "degrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceToVisibleValue"    # Z
    .param p4, "forceDrawDot"    # Z

    .prologue
    const/16 v7, 0x168

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 438
    if-ne p1, v4, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v4

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 444
    .local v1, "currentShowing":I
    if-nez p3, :cond_3

    if-ne v1, v5, :cond_3

    move v0, v5

    .line 445
    .local v0, "allowFineGrained":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 446
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->snapPrefer30s(I)I

    move-result p1

    .line 452
    :goto_2
    if-nez v1, :cond_5

    .line 453
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    .line 454
    .local v2, "radialSelectorView":Lcom/fourmob/datetimepicker/time/RadialSelectorView;
    const/16 v3, 0x1e

    .line 459
    .local v3, "stepSize":I
    :goto_3
    invoke-virtual {v2, p1, p2, p4}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 460
    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->invalidate()V

    .line 463
    if-nez v1, :cond_8

    .line 464
    iget-boolean v5, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_7

    .line 465
    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 466
    const/16 p1, 0x168

    .line 477
    :cond_2
    :goto_4
    div-int v4, p1, v3

    .line 478
    .local v4, "value":I
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 479
    add-int/lit8 v4, v4, 0xc

    goto :goto_0

    .end local v0    # "allowFineGrained":Z
    .end local v2    # "radialSelectorView":Lcom/fourmob/datetimepicker/time/RadialSelectorView;
    .end local v3    # "stepSize":I
    .end local v4    # "value":I
    :cond_3
    move v0, v6

    .line 444
    goto :goto_1

    .line 448
    .restart local v0    # "allowFineGrained":Z
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    goto :goto_2

    .line 456
    :cond_5
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    .line 457
    .restart local v2    # "radialSelectorView":Lcom/fourmob/datetimepicker/time/RadialSelectorView;
    const/4 v3, 0x6

    .restart local v3    # "stepSize":I
    goto :goto_3

    .line 467
    :cond_6
    if-ne p1, v7, :cond_2

    if-nez p2, :cond_2

    .line 468
    const/4 p1, 0x0

    goto :goto_4

    .line 470
    :cond_7
    if-nez p1, :cond_2

    .line 471
    const/16 p1, 0x168

    goto :goto_4

    .line 473
    :cond_8
    if-ne p1, v7, :cond_2

    if-ne v1, v5, :cond_2

    .line 474
    const/4 p1, 0x0

    goto :goto_4
.end method

.method private setItem(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 238
    if-nez p1, :cond_1

    .line 239
    invoke-direct {p0, v4, p2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 240
    rem-int/lit8 v2, p2, 0xc

    mul-int/lit8 v0, v2, 0x1e

    .line 241
    .local v0, "hourDegrees":I
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-direct {p0, p2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 242
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->invalidate()V

    .line 249
    .end local v0    # "hourDegrees":I
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-ne p1, v2, :cond_0

    .line 244
    invoke-direct {p0, v2, p2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 245
    mul-int/lit8 v1, p2, 0x6

    .line 246
    .local v1, "minuteDegrees":I
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v2, v1, v4, v4}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 247
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->invalidate()V

    goto :goto_0
.end method

.method private setValueForItem(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 297
    if-nez p1, :cond_1

    .line 298
    iput p2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-ne p1, v1, :cond_2

    .line 300
    iput p2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 302
    if-nez p2, :cond_3

    .line 303
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0

    .line 304
    :cond_3
    if-ne p2, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0
.end method

.method private snapOnly30s(II)I
    .locals 5
    .param p1, "degrees"    # I
    .param p2, "forceHigherOrLower"    # I

    .prologue
    .line 402
    const/16 v2, 0x1e

    .line 403
    .local v2, "stepSize":I
    div-int v3, p1, v2

    mul-int v1, v3, v2

    .line 404
    .local v1, "floor":I
    add-int v0, v1, v2

    .line 405
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 406
    move p1, v0

    .line 419
    :goto_0
    return p1

    .line 407
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 408
    if-ne p1, v1, :cond_1

    .line 409
    sub-int/2addr v1, v2

    .line 411
    :cond_1
    move p1, v1

    goto :goto_0

    .line 413
    :cond_2
    sub-int v3, p1, v1

    sub-int v4, v0, p1

    if-ge v3, v4, :cond_3

    .line 414
    move p1, v1

    goto :goto_0

    .line 416
    :cond_3
    move p1, v0

    goto :goto_0
.end method

.method private snapPrefer30s(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 386
    const/4 v0, -0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    .line 789
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    .line 791
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 792
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 793
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 794
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->minute:I

    .line 795
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 796
    .local v2, "millis":J
    const/4 v0, 0x1

    .line 797
    .local v0, "flags":I
    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_0

    .line 798
    or-int/lit16 v0, v0, 0x80

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 801
    .local v4, "timeString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    .end local v0    # "flags":I
    .end local v1    # "time":Landroid/text/format/Time;
    .end local v2    # "millis":J
    .end local v4    # "timeString":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 3

    .prologue
    .line 515
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 516
    const-string/jumbo v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, -0x1

    .line 519
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 287
    :cond_0
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    return v0
.end method

.method public initialize(Landroid/content/Context;IIZZ)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialHoursOfDay"    # I
    .param p3, "initialMinutes"    # I
    .param p4, "is24HourMode"    # Z
    .param p5, "vibrate"    # Z

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 176
    const-string/jumbo v2, "RadialPickerLayout"

    const-string/jumbo v5, "Time has already been initialized."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 179
    :cond_0
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Lcom/fourmob/datetimepicker/Utils;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    .line 182
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mVibrate:Z

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/fourmob/datetimepicker/time/CircleView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/fourmob/datetimepicker/time/CircleView;->initialize(Landroid/content/Context;Z)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/fourmob/datetimepicker/time/CircleView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/CircleView;->invalidate()V

    .line 187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    if-nez v2, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    const/16 v2, 0xc

    move/from16 v0, p2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v2}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->initialize(Landroid/content/Context;I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 193
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 194
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 195
    .local v18, "hours":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    .line 196
    .local v19, "hours_24":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    .line 197
    .local v22, "minutes":[I
    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    .line 198
    .local v4, "hoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 199
    .local v21, "innerHoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 200
    .local v23, "minutesTexts":[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    const/16 v2, 0xc

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 201
    if-eqz p4, :cond_4

    const-string/jumbo v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v19, v20

    .line 202
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v4, v20

    .line 203
    const-string/jumbo v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v21, v20

    .line 204
    const-string/jumbo v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v22, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v23, v20

    .line 200
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 180
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "hoursTexts":[Ljava/lang/String;
    .end local v18    # "hours":[I
    .end local v19    # "hours_24":[I
    .end local v20    # "i":I
    .end local v21    # "innerHoursTexts":[Ljava/lang/String;
    .end local v22    # "minutes":[I
    .end local v23    # "minutesTexts":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    goto/16 :goto_1

    .line 188
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 202
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "hoursTexts":[Ljava/lang/String;
    .restart local v18    # "hours":[I
    .restart local v19    # "hours_24":[I
    .restart local v20    # "i":I
    .restart local v21    # "innerHoursTexts":[Ljava/lang/String;
    .restart local v22    # "minutes":[I
    .restart local v23    # "minutesTexts":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 206
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    if-eqz p4, :cond_6

    move-object/from16 v5, v21

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->invalidate()V

    .line 209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v10, 0x0

    move-object v6, v3

    move-object/from16 v7, v23

    invoke-virtual/range {v5 .. v10}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->invalidate()V

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 214
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 215
    rem-int/lit8 v2, p2, 0xc

    mul-int/lit8 v10, v2, 0x1e

    .line 216
    .local v10, "hourDegrees":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v9, 0x1

    .line 217
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v11

    move-object/from16 v6, p1

    move/from16 v8, p4

    .line 216
    invoke-virtual/range {v5 .. v11}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 218
    mul-int/lit8 v16, p3, 0x6

    .line 219
    .local v16, "minuteDegrees":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 222
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    goto/16 :goto_0

    .line 206
    .end local v10    # "hourDegrees":I
    .end local v16    # "minuteDegrees":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 194
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 195
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 196
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 777
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 778
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 779
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 780
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 782
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 152
    .local v2, "measuredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 153
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 154
    .local v1, "measuredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 155
    .local v0, "heightMode":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 157
    .local v3, "minDimension":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 158
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 157
    invoke-super {p0, v5, v6}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 159
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 582
    .local v6, "eventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 585
    .local v7, "eventY":F
    const/4 v14, 0x1

    new-array v9, v14, [Ljava/lang/Boolean;

    .line 586
    .local v9, "isInnerCircle":[Ljava/lang/Boolean;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v9, v14

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 590
    .local v12, "millis":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 740
    :cond_0
    :goto_0
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 592
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v14, :cond_1

    .line 593
    const/4 v14, 0x1

    goto :goto_1

    .line 596
    :cond_1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownX:F

    .line 597
    move-object/from16 v0, p0

    iput v7, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownY:F

    .line 599
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 600
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 601
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 603
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    if-nez v14, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v6, v7}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 608
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 611
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 612
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 642
    :cond_3
    :goto_3
    const/4 v14, 0x1

    goto :goto_1

    .line 606
    :cond_4
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_2

    .line 623
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v14}, Lcom/fourmob/datetimepicker/Utils;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v8

    .line 625
    .local v8, "forceLegal":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 626
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 644
    .end local v8    # "forceLegal":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v14, :cond_6

    .line 646
    const-string/jumbo v14, "RadialPickerLayout"

    const-string/jumbo v15, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 650
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownY:F

    sub-float v14, v7, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 651
    .local v4, "dY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownX:F

    sub-float v14, v6, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 653
    .local v3, "dX":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v14, v14

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v14, v14

    cmpg-float v14, v4, v14

    if-lez v14, :cond_0

    .line 661
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 662
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v6, v7}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v10

    .line 664
    .local v10, "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq v10, v14, :cond_0

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 667
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 672
    .end local v10    # "isTouchingAmOrPm":I
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 678
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 680
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v14, v9}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v5

    .line 681
    .local v5, "degrees":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_a

    .line 682
    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v11

    .line 683
    .local v11, "value":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    if-eq v11, v14, :cond_a

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 685
    move-object/from16 v0, p0

    iput v11, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v14, v15, v11, v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 689
    .end local v11    # "value":I
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 691
    .end local v3    # "dX":F
    .end local v4    # "dY":F
    .end local v5    # "degrees":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v14, :cond_b

    .line 693
    const-string/jumbo v14, "RadialPickerLayout"

    const-string/jumbo v15, "Input was disabled, but received ACTION_UP."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 v15, 0x3

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v14 .. v17}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 695
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 698
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 699
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 702
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 703
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v6, v7}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v10

    .line 704
    .restart local v10    # "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 707
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v10, v14, :cond_d

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v14, v10}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v14

    if-eq v14, v10, :cond_d

    .line 710
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v14 .. v17}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 711
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 714
    :cond_d
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 719
    .end local v10    # "isTouchingAmOrPm":I
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_10

    .line 720
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v14, v9}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v5

    .line 721
    .restart local v5    # "degrees":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_10

    .line 722
    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v14, :cond_11

    const/4 v14, 0x1

    :goto_4
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v15, v14, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v11

    .line 723
    .restart local v11    # "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v14, :cond_f

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v2

    .line 725
    .local v2, "amOrPm":I
    if-nez v2, :cond_12

    const/16 v14, 0xc

    if-ne v11, v14, :cond_12

    .line 726
    const/4 v11, 0x0

    .line 731
    .end local v2    # "amOrPm":I
    :cond_f
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual/range {p0 .. p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v14, v15, v11, v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 735
    .end local v5    # "degrees":I
    .end local v11    # "value":I
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 736
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 722
    .restart local v5    # "degrees":I
    :cond_11
    const/4 v14, 0x0

    goto :goto_4

    .line 727
    .restart local v2    # "amOrPm":I
    .restart local v11    # "value":I
    :cond_12
    const/4 v14, 0x1

    if-ne v2, v14, :cond_f

    const/16 v14, 0xc

    if-eq v11, v14, :cond_f

    .line 728
    add-int/lit8 v11, v11, 0xc

    goto :goto_5

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 814
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 862
    :goto_0
    return v7

    .line 818
    :cond_0
    const/4 v0, 0x0

    .line 819
    .local v0, "changeMultiplier":I
    const/16 v9, 0x1000

    if-ne p1, v9, :cond_4

    .line 820
    const/4 v0, 0x1

    .line 824
    :cond_1
    :goto_1
    if-eqz v0, :cond_9

    .line 825
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v6

    .line 826
    .local v6, "value":I
    const/4 v5, 0x0

    .line 827
    .local v5, "stepSize":I
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 828
    .local v1, "currentItemShowing":I
    if-nez v1, :cond_5

    .line 829
    const/16 v5, 0x1e

    .line 830
    rem-int/lit8 v6, v6, 0xc

    .line 835
    :cond_2
    :goto_2
    mul-int v2, v6, v5

    .line 836
    .local v2, "degrees":I
    invoke-direct {p0, v2, v0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result v2

    .line 837
    div-int v6, v2, v5

    .line 838
    const/4 v3, 0x0

    .line 839
    .local v3, "maxValue":I
    const/4 v4, 0x0

    .line 840
    .local v4, "minValue":I
    if-nez v1, :cond_7

    .line 841
    iget-boolean v9, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v9, :cond_6

    .line 842
    const/16 v3, 0x17

    .line 850
    :goto_3
    if-le v6, v3, :cond_8

    .line 852
    move v6, v4

    .line 857
    :cond_3
    :goto_4
    invoke-direct {p0, v1, v6}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 858
    iget-object v9, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v9, v1, v6, v8}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    .line 821
    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "stepSize":I
    .end local v6    # "value":I
    :cond_4
    const/16 v9, 0x2000

    if-ne p1, v9, :cond_1

    .line 822
    const/4 v0, -0x1

    goto :goto_1

    .line 831
    .restart local v1    # "currentItemShowing":I
    .restart local v5    # "stepSize":I
    .restart local v6    # "value":I
    :cond_5
    if-ne v1, v7, :cond_2

    .line 832
    const/4 v5, 0x6

    goto :goto_2

    .line 844
    .restart local v2    # "degrees":I
    .restart local v3    # "maxValue":I
    .restart local v4    # "minValue":I
    :cond_6
    const/16 v3, 0xc

    .line 845
    const/4 v4, 0x1

    goto :goto_3

    .line 848
    :cond_7
    const/16 v3, 0x37

    goto :goto_3

    .line 853
    :cond_8
    if-ge v6, v4, :cond_3

    .line 855
    move v6, v3

    goto :goto_4

    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "stepSize":I
    .end local v6    # "value":I
    :cond_9
    move v7, v8

    .line 862
    goto :goto_0
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "amOrPm"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, p1}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 317
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/fourmob/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 318
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 319
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 528
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    .line 529
    const-string/jumbo v6, "RadialPickerLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TimePicker does not support view at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    return-void

    .line 534
    :cond_0
    if-eqz p2, :cond_3

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_3

    move p2, v6

    .line 536
    :goto_1
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    .line 537
    .local v3, "lastIndex":I
    iput p1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    .line 539
    if-eqz p2, :cond_5

    if-eq p1, v3, :cond_5

    .line 540
    new-array v0, v5, [Landroid/animation/ObjectAnimator;

    .line 541
    .local v0, "anims":[Landroid/animation/ObjectAnimator;
    if-ne p1, v6, :cond_4

    .line 542
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v8}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v7

    .line 543
    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v7}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v0, v6

    .line 544
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v10

    .line 545
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v11

    .line 553
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 554
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 556
    :cond_2
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    .line 557
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 558
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .end local v0    # "anims":[Landroid/animation/ObjectAnimator;
    .end local v3    # "lastIndex":I
    :cond_3
    move p2, v7

    .line 534
    goto :goto_1

    .line 546
    .restart local v0    # "anims":[Landroid/animation/ObjectAnimator;
    .restart local v3    # "lastIndex":I
    :cond_4
    if-nez p1, :cond_1

    .line 547
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v8}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v7

    .line 548
    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v7}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v0, v6

    .line 549
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v10

    .line 550
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v11

    goto :goto_2

    .line 560
    .end local v0    # "anims":[Landroid/animation/ObjectAnimator;
    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_8

    .line 561
    if-nez p1, :cond_6

    const/16 v1, 0xff

    .line 562
    .local v1, "hourAlpha":I
    :goto_3
    if-ne p1, v6, :cond_7

    const/16 v4, 0xff

    .line 563
    .local v4, "minuteAlpha":I
    :goto_4
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 564
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 565
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 566
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->setAlpha(F)V

    goto/16 :goto_0

    .end local v1    # "hourAlpha":I
    .end local v4    # "minuteAlpha":I
    :cond_6
    move v1, v7

    .line 561
    goto :goto_3

    .restart local v1    # "hourAlpha":I
    :cond_7
    move v4, v7

    .line 562
    goto :goto_4

    .line 568
    .end local v1    # "hourAlpha":I
    :cond_8
    if-nez p1, :cond_a

    move v2, v7

    .line 569
    .local v2, "hourVisibility":I
    :goto_5
    if-ne p1, v6, :cond_9

    move v5, v7

    .line 570
    .local v5, "minuteVisibility":I
    :cond_9
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v6, v2}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->setVisibility(I)V

    .line 571
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v6, v2}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->setVisibility(I)V

    .line 572
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v6, v5}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->setVisibility(I)V

    .line 573
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/fourmob/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v6, v5}, Lcom/fourmob/datetimepicker/time/RadialSelectorView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2    # "hourVisibility":I
    .end local v5    # "minuteVisibility":I
    :cond_a
    move v2, v5

    .line 568
    goto :goto_5
.end method

.method public setOnValueSelectedListener(Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .line 163
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 228
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mVibrate:Z

    .line 232
    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .locals 2
    .param p1, "inputEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 762
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 769
    :goto_0
    return v0

    .line 767
    :cond_0
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 768
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 769
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tryVibrate()V
    .locals 6

    .prologue
    .line 748
    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mVibrate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 751
    .local v0, "now":J
    iget-wide v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastVibrate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 753
    iput-wide v0, p0, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->mLastVibrate:J

    .line 756
    .end local v0    # "now":J
    :cond_0
    return-void
.end method
