.class public Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
.super Landroid/app/DialogFragment;
.source "RadialTimePickerDialog.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;,
        Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;,
        Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field public static final AM:I = 0x0

.field public static final AMPM_INDEX:I = 0x2

.field public static final ENABLE_PICKER_INDEX:I = 0x3

.field public static final HOUR_INDEX:I = 0x0

.field private static final KEY_CURRENT_ITEM_SHOWING:Ljava/lang/String; = "current_item_showing"

.field private static final KEY_HOUR_OF_DAY:Ljava/lang/String; = "hour_of_day"

.field private static final KEY_IN_KB_MODE:Ljava/lang/String; = "in_kb_mode"

.field private static final KEY_IS_24_HOUR_VIEW:Ljava/lang/String; = "is_24_hour_view"

.field private static final KEY_MINUTE:Ljava/lang/String; = "minute"

.field private static final KEY_TYPED_TIMES:Ljava/lang/String; = "typed_times"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final MINUTE_INDEX:I = 0x1

.field public static final PM:I = 0x1

.field private static final PULSE_ANIMATOR_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TimePickerDialog"


# instance fields
.field private doneButtonText:Ljava/lang/String;

.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mBlack:I

.field private mBlue:I

.field private mCallback:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/TextView;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mVibrate:Z

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;IZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialPickerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mCallback:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 541
    iget-boolean v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_2

    .line 542
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 563
    :cond_1
    :goto_0
    return v1

    .line 546
    :cond_2
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 548
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->deleteLastTypedKey()I

    goto :goto_0

    .line 552
    :cond_3
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getValFromKeyCode(I)I

    move-result v0

    .line 553
    .local v0, "val":I
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    const-string/jumbo v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    .line 557
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 558
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 560
    :cond_4
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    move v1, v2

    .line 563
    goto :goto_0
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 600
    .local v0, "deleted":I
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 603
    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 6
    .param p1, "updateDisplays"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 612
    iput-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    .line 613
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 615
    .local v0, "values":[I
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setTime(II)V

    .line 616
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 621
    .end local v0    # "values":[I
    :cond_1
    if-eqz p1, :cond_2

    .line 622
    invoke-direct {p0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateDisplay(Z)V

    .line 623
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, v5}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 625
    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 23

    .prologue
    .line 786
    const/4 v6, 0x7

    .line 787
    .local v6, "k0":I
    const/16 v7, 0x8

    .line 788
    .local v7, "k1":I
    const/16 v8, 0x9

    .line 789
    .local v8, "k2":I
    const/16 v9, 0xa

    .line 790
    .local v9, "k3":I
    const/16 v10, 0xb

    .line 791
    .local v10, "k4":I
    const/16 v11, 0xc

    .line 792
    .local v11, "k5":I
    const/16 v12, 0xd

    .line 793
    .local v12, "k6":I
    const/16 v13, 0xe

    .line 794
    .local v13, "k7":I
    const/16 v14, 0xf

    .line 795
    .local v14, "k8":I
    const/16 v15, 0x10

    .line 798
    .local v15, "k9":I
    new-instance v20, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .line 799
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 801
    new-instance v16, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 802
    .local v16, "minuteFirstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    new-instance v17, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 804
    .local v17, "minuteSecondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    invoke-virtual/range {v16 .. v17}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 807
    new-instance v4, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 808
    .local v4, "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 811
    new-instance v18, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 812
    .local v18, "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 814
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 817
    new-instance v19, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 819
    .local v19, "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 822
    new-instance v18, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 823
    .restart local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 825
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 828
    new-instance v4, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 829
    .restart local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 832
    new-instance v18, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 833
    .restart local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 835
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 838
    new-instance v18, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v10, v20, v21

    const/16 v21, 0x1

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 839
    .restart local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 841
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 844
    new-instance v4, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    const/16 v21, 0x3

    aput v12, v20, v21

    const/16 v21, 0x4

    aput v13, v20, v21

    const/16 v21, 0x5

    aput v14, v20, v21

    const/16 v21, 0x6

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 845
    .restart local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 847
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 910
    .end local v16    # "minuteFirstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    .end local v17    # "minuteSecondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    :goto_0
    return-void

    .line 851
    .end local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    .end local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    .end local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    :cond_0
    new-instance v3, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 854
    .local v3, "ampm":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    new-instance v4, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 855
    .restart local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 857
    invoke-virtual {v4, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 860
    new-instance v18, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 861
    .restart local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 863
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 866
    new-instance v19, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 867
    .restart local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 869
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 873
    new-instance v5, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 874
    .local v5, "fourthDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 876
    invoke-virtual {v5, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 879
    new-instance v19, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x1

    aput v13, v20, v21

    const/16 v21, 0x2

    aput v14, v20, v21

    const/16 v21, 0x3

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 880
    .restart local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 882
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 885
    new-instance v18, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    aput v10, v20, v21

    const/16 v21, 0x2

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 886
    .restart local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 889
    new-instance v19, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 890
    .restart local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 892
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 895
    new-instance v4, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    const/16 v21, 0x2

    aput v10, v20, v21

    const/16 v21, 0x3

    aput v11, v20, v21

    const/16 v21, 0x4

    aput v12, v20, v21

    const/16 v21, 0x5

    aput v13, v20, v21

    const/16 v21, 0x6

    aput v14, v20, v21

    const/16 v21, 0x7

    aput v15, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 896
    .restart local v4    # "firstDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 898
    invoke-virtual {v4, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 901
    new-instance v18, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 902
    .restart local v18    # "secondDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 905
    new-instance v19, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .end local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v6, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    const/16 v21, 0x2

    aput v8, v20, v21

    const/16 v21, 0x3

    aput v9, v20, v21

    const/16 v21, 0x4

    aput v10, v20, v21

    const/16 v21, 0x5

    aput v11, v20, v21

    const/16 v21, 0x6

    aput v12, v20, v21

    const/16 v21, 0x7

    aput v13, v20, v21

    const/16 v21, 0x8

    aput v14, v20, v21

    const/16 v21, 0x9

    aput v15, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V

    .line 906
    .restart local v19    # "thirdDigit":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    .line 908
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V

    goto/16 :goto_0
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 11
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 745
    iget v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmKeyCode:I

    if-eq v6, v5, :cond_0

    iget v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmKeyCode:I

    if-ne v6, v5, :cond_1

    .line 747
    :cond_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 750
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 751
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 752
    .local v0, "amChar":C
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 753
    .local v4, "pmChar":C
    if-eq v0, v4, :cond_4

    .line 754
    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 756
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_3

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 757
    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmKeyCode:I

    .line 758
    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmKeyCode:I

    .line 766
    .end local v0    # "amChar":C
    .end local v1    # "events":[Landroid/view/KeyEvent;
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_1
    :goto_1
    if-nez p1, :cond_5

    .line 767
    iget v5, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmKeyCode:I

    .line 772
    :cond_2
    :goto_2
    return v5

    .line 760
    .restart local v0    # "amChar":C
    .restart local v1    # "events":[Landroid/view/KeyEvent;
    .restart local v2    # "i":I
    .restart local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v4    # "pmChar":C
    :cond_3
    const-string/jumbo v6, "TimePickerDialog"

    const-string/jumbo v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 750
    .end local v1    # "events":[Landroid/view/KeyEvent;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "amChar":C
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_5
    if-ne p1, v9, :cond_2

    .line 769
    iget v5, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 12
    .param p1, "enteredZeros"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 704
    const/4 v0, -0x1

    .line 705
    .local v0, "amOrPm":I
    const/4 v6, 0x1

    .line 706
    .local v6, "startIndex":I
    iget-boolean v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 707
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 708
    .local v3, "keyCode":I
    invoke-direct {p0, v11}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v8

    if-ne v3, v8, :cond_3

    .line 709
    const/4 v0, 0x0

    .line 713
    :cond_0
    :goto_0
    const/4 v6, 0x2

    .line 715
    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    .line 716
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 717
    .local v1, "hour":I
    move v2, v6

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v2, v8, :cond_7

    .line 718
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getValFromKeyCode(I)I

    move-result v7

    .line 719
    .local v7, "val":I
    if-ne v2, v6, :cond_4

    .line 720
    move v4, v7

    .line 717
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 710
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v7    # "val":I
    .restart local v3    # "keyCode":I
    :cond_3
    invoke-direct {p0, v10}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 711
    const/4 v0, 0x1

    goto :goto_0

    .line 721
    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    .restart local v7    # "val":I
    :cond_4
    add-int/lit8 v8, v6, 0x1

    if-ne v2, v8, :cond_5

    .line 722
    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v4, v8

    .line 723
    if-eqz p1, :cond_2

    if-nez v7, :cond_2

    .line 724
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v10

    goto :goto_2

    .line 726
    :cond_5
    add-int/lit8 v8, v6, 0x2

    if-ne v2, v8, :cond_6

    .line 727
    move v1, v7

    goto :goto_2

    .line 728
    :cond_6
    add-int/lit8 v8, v6, 0x3

    if-ne v2, v8, :cond_2

    .line 729
    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v1, v8

    .line 730
    if-eqz p1, :cond_2

    if-nez v7, :cond_2

    .line 731
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, p1, v11

    goto :goto_2

    .line 736
    .end local v7    # "val":I
    :cond_7
    const/4 v8, 0x3

    new-array v5, v8, [I

    aput v1, v5, v11

    aput v4, v5, v10

    const/4 v8, 0x2

    aput v0, v5, v8

    .line 737
    .local v5, "ret":[I
    return-object v5
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 668
    packed-switch p1, :pswitch_data_0

    .line 690
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 670
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 672
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 674
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 676
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 678
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 680
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 682
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 684
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 686
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 688
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
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

.method private isTypedTimeFullyLegal()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 585
    iget-boolean v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_1

    .line 588
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 589
    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 594
    .end local v0    # "values":[I
    :goto_0
    return v1

    .restart local v0    # "values":[I
    :cond_0
    move v1, v2

    .line 589
    goto :goto_0

    .line 593
    .end local v0    # "values":[I
    :cond_1
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 594
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    .line 571
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mLegalTimesTree:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .line 572
    .local v1, "node":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 573
    .local v0, "keyCode":I
    invoke-virtual {v1, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->canReach(I)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    move-result-object v1

    .line 574
    if-nez v1, :cond_0

    .line 575
    const/4 v2, 0x0

    .line 578
    .end local v0    # "keyCode":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZ)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    .locals 1
    .param p0, "callback"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZZ)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZZ)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    .locals 6
    .param p0, "callback"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z
    .param p4, "vibrate"    # Z

    .prologue
    .line 138
    new-instance v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-direct {v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;-><init>()V

    .local v0, "ret":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->initialize(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZZ)V

    .line 140
    return-object v0
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 455
    const/16 v4, 0x6f

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->dismiss()V

    .line 518
    :cond_1
    :goto_0
    return v2

    .line 458
    :cond_2
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_3

    .line 459
    iget-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 460
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    invoke-direct {p0, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->finishKbMode(Z)V

    goto :goto_0

    .line 465
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_6

    .line 466
    iget-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_4

    .line 467
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    invoke-direct {p0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->finishKbMode(Z)V

    .line 472
    :cond_4
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mCallback:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    if-eqz v3, :cond_5

    .line 473
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mCallback:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    iget-object v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    .line 474
    invoke-virtual {v5}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v5

    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    .line 473
    invoke-interface {v3, v4, v5, v6}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;II)V

    .line 476
    :cond_5
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->dismiss()V

    goto :goto_0

    .line 478
    :cond_6
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a

    .line 479
    iget-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_7

    .line 480
    iget-object v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 481
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->deleteLastTypedKey()I

    move-result v0

    .line 483
    .local v0, "deleted":I
    invoke-direct {p0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 484
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    .line 490
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    .line 491
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 490
    invoke-static {v4, v5}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    invoke-direct {p0, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 518
    goto :goto_0

    .line 485
    .restart local v0    # "deleted":I
    :cond_8
    invoke-direct {p0, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 486
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 488
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1

    .line 495
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x7

    if-eq p1, v4, :cond_b

    const/16 v4, 0x8

    if-eq p1, v4, :cond_b

    const/16 v4, 0x9

    if-eq p1, v4, :cond_b

    const/16 v4, 0xa

    if-eq p1, v4, :cond_b

    const/16 v4, 0xb

    if-eq p1, v4, :cond_b

    const/16 v4, 0xc

    if-eq p1, v4, :cond_b

    const/16 v4, 0xd

    if-eq p1, v4, :cond_b

    const/16 v4, 0xe

    if-eq p1, v4, :cond_b

    const/16 v4, 0xf

    if-eq p1, v4, :cond_b

    const/16 v4, 0x10

    if-eq p1, v4, :cond_b

    iget-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v4, :cond_7

    .line 501
    invoke-direct {p0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_b

    invoke-direct {p0, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 502
    :cond_b
    iget-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    if-nez v4, :cond_d

    .line 503
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    if-nez v3, :cond_c

    .line 505
    const-string/jumbo v3, "TimePickerDialog"

    const-string/jumbo v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 508
    :cond_c
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 509
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->tryStartingKbMode(I)V

    goto/16 :goto_0

    .line 513
    :cond_d
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 514
    invoke-direct {p0, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateDisplay(Z)V

    goto/16 :goto_0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "delayLabelAnimate"    # Z
    .param p4, "announce"    # Z

    .prologue
    .line 414
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6, p1, p2}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 417
    if-nez p1, :cond_3

    .line 418
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 419
    .local v1, "hours":I
    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v6, :cond_0

    .line 420
    rem-int/lit8 v1, v1, 0xc

    .line 422
    :cond_0
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 423
    if-eqz p4, :cond_1

    .line 424
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 436
    .end local v1    # "hours":I
    .local v2, "labelToAnimate":Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlue:I

    .line 437
    .local v0, "hourColor":I
    :goto_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    iget v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlue:I

    .line 438
    .local v3, "minuteColor":I
    :goto_2
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v6, v7}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 442
    .local v5, "pulseAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_2

    .line 443
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 445
    :cond_2
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 446
    return-void

    .line 428
    .end local v0    # "hourColor":I
    .end local v2    # "labelToAnimate":Landroid/widget/TextView;
    .end local v3    # "minuteColor":I
    .end local v5    # "pulseAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 429
    .local v4, "minutes":I
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 430
    if-eqz p4, :cond_4

    .line 431
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    :cond_4
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .restart local v2    # "labelToAnimate":Landroid/widget/TextView;
    goto :goto_0

    .line 436
    .end local v4    # "minutes":I
    :cond_5
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlack:I

    goto :goto_1

    .line 437
    .restart local v0    # "hourColor":I
    :cond_6
    iget v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlack:I

    goto :goto_2
.end method

.method private setHour(IZ)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    .line 383
    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_2

    .line 384
    const-string/jumbo v0, "%02d"

    .line 393
    .local v0, "format":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    if-eqz p2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-static {v2, v1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    :cond_1
    return-void

    .line 386
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v0, "%d"

    .line 387
    .restart local v0    # "format":Ljava/lang/String;
    rem-int/lit8 p1, p1, 0xc

    .line 388
    if-nez p1, :cond_0

    .line 389
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 402
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 403
    const/4 p1, 0x0

    .line 405
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 531
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    .line 533
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 534
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateDisplay(Z)V

    .line 536
    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2
    .param p1, "amOrPm"    # I

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 339
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 12
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    .line 636
    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 637
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 638
    .local v1, "hour":I
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 639
    .local v4, "minute":I
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setHour(IZ)V

    .line 640
    invoke-direct {p0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setMinute(I)V

    .line 641
    iget-boolean v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_0

    .line 642
    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    .line 644
    :cond_0
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 645
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 665
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_1
    :goto_1
    return-void

    .line 642
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 647
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v0, v8

    .line 648
    .local v0, "enteredZeros":[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v7

    .line 649
    .local v7, "values":[I
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v2, "%02d"

    .line 650
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v5, "%02d"

    .line 651
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 653
    .local v3, "hourStr":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 655
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v9, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlack:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v9, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlack:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    iget-boolean v8, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_1

    .line 662
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 649
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "%2d"

    goto :goto_2

    .line 650
    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "%2d"

    goto :goto_3

    .line 651
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    .line 652
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 653
    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    .line 654
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method


# virtual methods
.method public initialize(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZZ)V
    .locals 1
    .param p1, "callback"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z
    .param p5, "vibrate"    # Z

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mCallback:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    .line 147
    iput p2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialHourOfDay:I

    .line 148
    iput p3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialMinute:I

    .line 149
    iput-boolean p4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    .line 151
    iput-boolean p5, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mVibrate:Z

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    if-eqz p1, :cond_0

    const-string/jumbo v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "minute"

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "is_24_hour_view"

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialHourOfDay:I

    .line 177
    const-string/jumbo v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialMinute:I

    .line 178
    const-string/jumbo v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    .line 179
    const-string/jumbo v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    .line 180
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mVibrate:Z

    .line 182
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 189
    sget v1, Lcom/fourmob/datetimepicker/R$layout;->time_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 190
    .local v13, "view":Landroid/view/View;
    new-instance v9, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$1;)V

    .line 191
    .local v9, "keyboardListener":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$KeyboardListener;
    sget v1, Lcom/fourmob/datetimepicker/R$id;->time_picker_dialog:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 194
    .local v11, "res":Landroid/content/res/Resources;
    sget v1, Lcom/fourmob/datetimepicker/R$string;->hour_picker_description:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 195
    sget v1, Lcom/fourmob/datetimepicker/R$string;->select_hours:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 196
    sget v1, Lcom/fourmob/datetimepicker/R$string;->minute_picker_description:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 197
    sget v1, Lcom/fourmob/datetimepicker/R$string;->select_minutes:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 198
    sget v1, Lcom/fourmob/datetimepicker/R$color;->blue:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlue:I

    .line 199
    sget v1, Lcom/fourmob/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mBlack:I

    .line 201
    sget v1, Lcom/fourmob/datetimepicker/R$id;->hours:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 202
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 203
    sget v1, Lcom/fourmob/datetimepicker/R$id;->hour_space:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 204
    sget v1, Lcom/fourmob/datetimepicker/R$id;->minutes_space:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 205
    sget v1, Lcom/fourmob/datetimepicker/R$id;->minutes:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 207
    sget v1, Lcom/fourmob/datetimepicker/R$id;->ampm_label:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    .line 208
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$1;

    invoke-direct {v2, p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$1;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 226
    :cond_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "amPmTexts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmText:Ljava/lang/String;

    .line 228
    const/4 v1, 0x1

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmText:Ljava/lang/String;

    .line 230
    sget v1, Lcom/fourmob/datetimepicker/R$id;->time_picker:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    .line 231
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, p0}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/fourmob/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    .line 232
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, v9}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 233
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialHourOfDay:I

    iget v4, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialMinute:I

    iget-boolean v5, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mVibrate:Z

    invoke-virtual/range {v1 .. v6}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;IIZZ)V

    .line 234
    const/4 v8, 0x0

    .line 235
    .local v8, "currentItemShowing":I
    if-eqz p3, :cond_1

    const-string/jumbo v1, "current_item_showing"

    .line 236
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const-string/jumbo v1, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 239
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v8, v1, v2, v3}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 240
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->invalidate()V

    .line 242
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    new-instance v2, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$2;

    invoke-direct {v2, p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$2;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    new-instance v2, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$3;

    invoke-direct {v2, p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$3;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v1, Lcom/fourmob/datetimepicker/R$id;->done_button:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    .line 258
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    new-instance v2, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;

    invoke-direct {v2, p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$4;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->doneButtonText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->doneButtonText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 278
    sget v1, Lcom/fourmob/datetimepicker/R$id;->ampm_hitspace:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    .line 279
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    if-eqz v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v10, "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    sget v1, Lcom/fourmob/datetimepicker/R$id;->separator:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 286
    .local v12, "separatorView":Landroid/widget/TextView;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .end local v10    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "separatorView":Landroid/widget/TextView;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAllowAutoAdvance:Z

    .line 307
    iget v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialHourOfDay:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setHour(IZ)V

    .line 308
    iget v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialMinute:I

    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setMinute(I)V

    .line 311
    sget v1, Lcom/fourmob/datetimepicker/R$string;->time_placeholder:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 312
    sget v1, Lcom/fourmob/datetimepicker/R$string;->deleted_key:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPlaceholderText:C

    .line 314
    const/4 v1, -0x1

    iput v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mPmKeyCode:I

    iput v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmKeyCode:I

    .line 315
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->generateLegalTimesTree()V

    .line 316
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v1, :cond_6

    .line 317
    const-string/jumbo v1, "typed_times"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 318
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->tryStartingKbMode(I)V

    .line 319
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 324
    :cond_3
    :goto_1
    return-object v13

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialHourOfDay:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    .line 290
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    new-instance v2, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;

    invoke-direct {v2, p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$5;-><init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 289
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    .line 344
    const-string/jumbo v0, "hour_of_day"

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string/jumbo v0, "minute"

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string/jumbo v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    const-string/jumbo v0, "current_item_showing"

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string/jumbo v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    .line 350
    const-string/jumbo v0, "typed_times"

    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 352
    :cond_0
    const-string/jumbo v0, "vibrate"

    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    :cond_1
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 361
    if-nez p1, :cond_2

    .line 362
    invoke-direct {p0, p2, v5}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setHour(IZ)V

    .line 363
    const-string/jumbo v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "announcement":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 365
    invoke-direct {p0, v4, v4, v4, v5}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    if-ne p1, v4, :cond_3

    .line 370
    invoke-direct {p0, p2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setMinute(I)V

    goto :goto_0

    .line 371
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 372
    invoke-direct {p0, p2}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_0

    .line 373
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_5

    .line 375
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 377
    :cond_5
    invoke-direct {p0, v4}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->finishKbMode(Z)V

    goto :goto_0
.end method

.method public setDoneButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->doneButtonText:Ljava/lang/String;

    .line 777
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    :cond_0
    return-void
.end method

.method public setOnTimeSetListener(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mCallback:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;

    .line 156
    return-void
.end method

.method public setStartTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialHourOfDay:I

    .line 160
    iput p2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInitialMinute:I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mInKbMode:Z

    .line 162
    return-void
.end method

.method public setVibrate(Z)V
    .locals 1
    .param p1, "vibrate"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mVibrate:Z

    .line 166
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->mTimePicker:Lcom/fourmob/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1}, Lcom/fourmob/datetimepicker/time/RadialPickerLayout;->setVibrate(Z)V

    .line 168
    :cond_0
    return-void
.end method
