.class public Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
.super Landroid/app/DialogFragment;
.source "CalendarDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fourmob/datetimepicker/date/DatePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;,
        Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static DAY_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final MAX_YEAR:I = 0x7f5

.field private static final MIN_YEAR:I = 0x76e

.field private static final VIEW_DATE_PICKER_MONTH_DAY:I = 0x0

.field private static final VIEW_DATE_PICKER_YEAR:I = 0x1

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private dateformartsymbols:Ljava/text/DateFormatSymbols;

.field private doneButtonText:Ljava/lang/String;

.field private mAnimator:Landroid/widget/ViewAnimator;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;

.field private mCurrentView:I

.field private mDayOfWeekView:Landroid/widget/TextView;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

.field private mDelayAnimation:Z

.field private mDoneButton:Landroid/widget/Button;

.field private mLastVibrate:J

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxYear:I

.field private mMinYear:I

.field private mMonthAndDayView:Landroid/widget/LinearLayout;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSelectedMonthTextView:Landroid/widget/TextView;

.field private mVibrate:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWeekStart:I

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

.field private mYearView:Landroid/widget/TextView;

.field private maxDay:I

.field private minDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    .line 49
    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDelayAnimation:Z

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mListeners:Ljava/util/HashSet;

    .line 53
    const/16 v0, 0x7f5

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMaxYear:I

    .line 54
    const/16 v0, 0x76e

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMinYear:I

    .line 61
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mWeekStart:I

    .line 65
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->dateformartsymbols:Ljava/text/DateFormatSymbols;

    .line 69
    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrate:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private adjustDayInMonthIfNeeded(II)V
    .locals 4
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    const/4 v3, 0x5

    .line 72
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 73
    .local v0, "currentDay":I
    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result v1

    .line 74
    .local v1, "day":I
    if-le v0, v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;III)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    .locals 1
    .param p0, "onDateSetListener"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;IIIZ)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;IIIZ)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    .locals 6
    .param p0, "onDateSetListener"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "vibrate"    # Z

    .prologue
    .line 87
    new-instance v0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    invoke-direct {v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;-><init>()V

    .local v0, "datePickerDialog":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->initialize(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;IIIZ)V

    .line 89
    return-object v0
.end method

.method private setCurrentView(I)V
    .locals 1
    .param p1, "currentView"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setCurrentView(IZ)V

    .line 99
    return-void
.end method

.method private setCurrentView(IZ)V
    .locals 9
    .param p1, "currentView"    # I
    .param p2, "forceRefresh"    # Z

    .prologue
    .line 102
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 103
    .local v4, "timeInMillis":J
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3f866666    # 1.05f

    invoke-static {v6, v7, v8}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 106
    .local v1, "monthDayAnim":Landroid/animation/ObjectAnimator;
    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDelayAnimation:Z

    if-eqz v6, :cond_0

    .line 107
    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 108
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDelayAnimation:Z

    .line 110
    :cond_0
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onDateChanged()V

    .line 111
    iget v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    if-ne v6, p1, :cond_1

    if-eqz p2, :cond_2

    .line 112
    :cond_1
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 113
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 114
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 115
    iput p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    .line 117
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 118
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v4, v5, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "monthDayDesc":Ljava/lang/String;
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ViewAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    .end local v1    # "monthDayAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "monthDayDesc":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearView:Landroid/widget/TextView;

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static {v6, v7, v8}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 123
    .local v3, "yearAnim":Landroid/animation/ObjectAnimator;
    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDelayAnimation:Z

    if-eqz v6, :cond_3

    .line 124
    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 125
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDelayAnimation:Z

    .line 127
    :cond_3
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v6}, Lcom/fourmob/datetimepicker/date/YearPickerView;->onDateChanged()V

    .line 128
    iget v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    if-ne v6, p1, :cond_4

    if-eqz p2, :cond_5

    .line 129
    :cond_4
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 130
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearView:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 131
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 132
    iput p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    .line 134
    :cond_5
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 135
    sget-object v6, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "dayDesc":Ljava/lang/String;
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ViewAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDisplay()V
    .locals 7

    .prologue
    .line 142
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mWeekStart:I

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 144
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->dateformartsymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->dateformartsymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    sget-object v4, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearView:Landroid/widget/TextView;

    sget-object v4, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 151
    .local v2, "timeInMillis":J
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v4, 0x18

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method private updatePickers()V
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;->onDateChanged()V

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mWeekStart:I

    return v0
.end method

.method public getMaxDay()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->maxDay:I

    return v0
.end method

.method public getMaxYear()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMaxYear:I

    return v0
.end method

.method public getMinDay()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->minDay:I

    return v0
.end method

.method public getMinYear()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMinYear:I

    return v0
.end method

.method public getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public initialize(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 2
    .param p1, "onDateSetListener"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "vibrate"    # Z

    .prologue
    .line 178
    const/16 v0, 0x7f5

    if-le p2, v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "year end must < 2037"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    const/16 v0, 0x76e

    if-ge p2, v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "year end must > 1902"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;

    .line 183
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 184
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 185
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 186
    iput-boolean p5, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrate:Z

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->tryVibrate()V

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/fourmob/datetimepicker/R$id;->date_picker_year:I

    if-ne v0, v1, :cond_1

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setCurrentView(I)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/fourmob/datetimepicker/R$id;->date_picker_month_and_day:I

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setCurrentView(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 201
    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrator:Landroid/os/Vibrator;

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 204
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 205
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    const-string/jumbo v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 206
    const-string/jumbo v1, "vibrate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrate:Z

    .line 208
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const-string/jumbo v8, "DatePickerDialog"

    const-string/jumbo v9, "onCreateView: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 213
    sget v8, Lcom/fourmob/datetimepicker/R$layout;->date_picker_dialog:I

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 214
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/fourmob/datetimepicker/R$id;->date_picker_header:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    .line 215
    sget v8, Lcom/fourmob/datetimepicker/R$id;->date_picker_month_and_day:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    .line 216
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v8, Lcom/fourmob/datetimepicker/R$id;->date_picker_month:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    .line 218
    sget v8, Lcom/fourmob/datetimepicker/R$id;->date_picker_day:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    .line 219
    sget v8, Lcom/fourmob/datetimepicker/R$id;->date_picker_year:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearView:Landroid/widget/TextView;

    .line 220
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const/4 v3, -0x1

    .line 222
    .local v3, "listPosition":I
    const/4 v1, 0x0

    .line 223
    .local v1, "currentView":I
    const/4 v4, 0x0

    .line 224
    .local v4, "listPositionOffset":I
    if-eqz p3, :cond_0

    .line 225
    const-string/jumbo v8, "week_start"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mWeekStart:I

    .line 226
    const-string/jumbo v8, "year_start"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMinYear:I

    .line 227
    const-string/jumbo v8, "year_end"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMaxYear:I

    .line 228
    const-string/jumbo v8, "current_view"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 229
    const-string/jumbo v8, "list_position"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 230
    const-string/jumbo v8, "list_position_offset"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 233
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-direct {v8, v0, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    .line 234
    new-instance v8, Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-direct {v8, v0, p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    .line 235
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 236
    .local v6, "resources":Landroid/content/res/Resources;
    sget v8, Lcom/fourmob/datetimepicker/R$string;->day_picker_description:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    .line 237
    sget v8, Lcom/fourmob/datetimepicker/R$string;->select_day:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mSelectDay:Ljava/lang/String;

    .line 238
    sget v8, Lcom/fourmob/datetimepicker/R$string;->year_picker_description:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    .line 239
    sget v8, Lcom/fourmob/datetimepicker/R$string;->select_year:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mSelectYear:Ljava/lang/String;

    .line 240
    sget v8, Lcom/fourmob/datetimepicker/R$id;->animator:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ViewAnimator;

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    .line 241
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v8, v9}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 242
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v8, v9}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 244
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 245
    .local v2, "inAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0x12c

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 246
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v8, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 247
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 248
    .local v5, "outAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 249
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v8, v5}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 250
    sget v8, Lcom/fourmob/datetimepicker/R$id;->done:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDoneButton:Landroid/widget/Button;

    .line 251
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDoneButton:Landroid/widget/Button;

    new-instance v9, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;

    invoke-direct {v9, p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$1;-><init>(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->doneButtonText:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 260
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDoneButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->doneButtonText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->updateDisplay()V

    .line 262
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setCurrentView(IZ)V

    .line 264
    const/4 v8, -0x1

    if-eq v3, v8, :cond_3

    .line 265
    if-nez v1, :cond_2

    .line 266
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v8, v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    .line 268
    :cond_2
    const/4 v8, 0x1

    if-ne v1, v8, :cond_3

    .line 269
    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v8, v3, v4}, Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    .line 272
    :cond_3
    return-object v7
.end method

.method public onDayOfMonthSelected(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 283
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 284
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 285
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->updatePickers()V

    .line 286
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->updateDisplay()V

    .line 287
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 290
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string/jumbo v1, "week_start"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mWeekStart:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string/jumbo v1, "year_start"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMinYear:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string/jumbo v1, "year_end"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMaxYear:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    const-string/jumbo v1, "current_view"

    iget v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const/4 v0, -0x1

    .line 299
    .local v0, "mostVisiblePosition":I
    iget v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    .line 301
    :cond_0
    const-string/jumbo v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    iget v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCurrentView:I

    if-ne v1, v4, :cond_1

    .line 303
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getFirstVisiblePosition()I

    move-result v0

    .line 304
    const-string/jumbo v1, "list_position_offset"

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    :cond_1
    const-string/jumbo v1, "vibrate"

    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    return-void
.end method

.method public onYearSelected(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->adjustDayInMonthIfNeeded(II)V

    .line 311
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 312
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->updatePickers()V

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setCurrentView(I)V

    .line 314
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->updateDisplay()V

    .line 315
    return-void
.end method

.method public registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;)V
    .locals 1
    .param p1, "onDateChangedListener"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public setDoneButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->doneButtonText:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "weekStart"    # I

    .prologue
    .line 322
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    iput p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mWeekStart:I

    .line 325
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onChange()V

    .line 327
    :cond_2
    return-void
.end method

.method public setMaxDay(III)V
    .locals 2
    .param p1, "d"    # I
    .param p2, "m"    # I
    .param p3, "y"    # I

    .prologue
    .line 383
    if-nez p3, :cond_0

    .line 384
    const/4 v0, -0x1

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->maxDay:I

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    mul-int/lit8 v0, p2, 0xa

    add-int/2addr v0, p1

    mul-int/lit16 v1, p3, 0x2710

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->maxDay:I

    goto :goto_0
.end method

.method public setMinDay(III)V
    .locals 3
    .param p1, "d"    # I
    .param p2, "m"    # I
    .param p3, "y"    # I

    .prologue
    .line 375
    if-nez p3, :cond_0

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->minDay:I

    .line 379
    :goto_0
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "min day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->minDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 378
    :cond_0
    mul-int/lit8 v0, p2, 0xa

    add-int/2addr v0, p1

    mul-int/lit16 v1, p3, 0x2710

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->minDay:I

    goto :goto_0
.end method

.method public setOnDateSetListener(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "onDateSetListener"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;

    .line 331
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrate:Z

    .line 95
    return-void
.end method

.method public setYearRange(II)V
    .locals 2
    .param p1, "minYear"    # I
    .param p2, "maxYear"    # I

    .prologue
    .line 334
    if-gt p2, p1, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Year end must be larger than year start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    const/16 v0, 0x7f5

    if-le p2, v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "max year end must < 2037"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    const/16 v0, 0x76e

    if-ge p1, v0, :cond_2

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "min year end must > 1902"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_2
    iput p1, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMinYear:I

    .line 341
    iput p2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mMaxYear:I

    .line 342
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onChange()V

    .line 344
    :cond_3
    return-void
.end method

.method public tryVibrate()V
    .locals 6

    .prologue
    .line 347
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrate:Z

    if-eqz v2, :cond_0

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 349
    .local v0, "timeInMillis":J
    iget-wide v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mLastVibrate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 351
    iput-wide v0, p0, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->mLastVibrate:J

    .line 354
    .end local v0    # "timeInMillis":J
    :cond_0
    return-void
.end method
