.class public Lcom/fourmob/datetimepicker/date/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field protected static DAY_SELECTED_CIRCLE_SIZE:I

.field protected static DAY_SEPARATOR_WIDTH:I

.field protected static DEFAULT_HEIGHT:I

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I

.field protected static MIN_HEIGHT:I

.field protected static MONTH_DAY_LABEL_TEXT_SIZE:I

.field protected static MONTH_HEADER_SIZE:I

.field protected static MONTH_LABEL_TEXT_SIZE:I

.field protected static mScale:F


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mDateFormatSymbols:Ljava/text/DateFormatSymbols;

.field private final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayOfWeekStart:I

.field private mDayOfWeekTypeface:Ljava/lang/String;

.field protected mDayTextColor:I

.field protected mDisabledNumberColor:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field private final mFormatter:Ljava/util/Formatter;

.field protected mHasToday:Z

.field protected mLastMonth:I

.field protected mMonth:I

.field protected mMonthDayLabelPaint:Landroid/graphics/Paint;

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mMonthTitleBGColor:I

.field protected mMonthTitleBGPaint:Landroid/graphics/Paint;

.field protected mMonthTitleColor:I

.field protected mMonthTitlePaint:Landroid/graphics/Paint;

.field private mMonthTitleTypeface:Ljava/lang/String;

.field protected mNumCells:I

.field protected mNumDays:I

.field private mNumRows:I

.field private mOnDayClickListener:Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

.field protected mPadding:I

.field protected mRowHeight:I

.field protected mSelectedCirclePaint:Landroid/graphics/Paint;

.field protected mSelectedDay:I

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field protected mToday:I

.field protected mTodayNumberColor:I

.field protected mWeekStart:I

.field protected mWidth:I

.field protected mYear:I

.field private maxDay:I

.field private minDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DAY_SEPARATOR_WIDTH:I

    .line 27
    const/16 v0, 0x20

    sput v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DEFAULT_HEIGHT:I

    .line 29
    const/16 v0, 0xa

    sput v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MIN_HEIGHT:I

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    .line 39
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mFirstJulianDay:I

    .line 40
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mFirstMonth:I

    .line 42
    iput-boolean v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    .line 43
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mLastMonth:I

    .line 52
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    .line 53
    const/4 v1, 0x7

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    .line 54
    const/4 v1, 0x6

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    .line 56
    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    .line 57
    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DEFAULT_HEIGHT:I

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    .line 59
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    .line 60
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedLeft:I

    .line 61
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedRight:I

    .line 63
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    .line 66
    const/4 v1, 0x1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    .line 69
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 70
    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->minDay:I

    iput v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->maxDay:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 77
    sget v1, Lcom/fourmob/datetimepicker/R$string;->day_of_week_label_typeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    .line 78
    sget v1, Lcom/fourmob/datetimepicker/R$string;->sans_serif:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    .line 79
    sget v1, Lcom/fourmob/datetimepicker/R$color;->date_picker_text_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    .line 80
    sget v1, Lcom/fourmob/datetimepicker/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    .line 81
    sget v1, Lcom/fourmob/datetimepicker/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleColor:I

    .line 82
    sget v1, Lcom/fourmob/datetimepicker/R$color;->circle_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGColor:I

    .line 83
    sget v1, Lcom/fourmob/datetimepicker/R$color;->date_picker_text_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDisabledNumberColor:I

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mFormatter:Ljava/util/Formatter;

    .line 86
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->day_number_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 87
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->month_label_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_LABEL_TEXT_SIZE:I

    .line 88
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->month_day_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    .line 89
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->month_list_item_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    .line 90
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->day_number_select_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    .line 91
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget v2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    .line 92
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->initView()V

    .line 93
    return-void
.end method

.method private calculateNumRows()I
    .locals 5

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 97
    .local v0, "dayOffset":I
    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    div-int v1, v3, v4

    .line 98
    .local v1, "nbRows":I
    const/4 v2, 0x0

    .line 99
    .local v2, "plusOne":I
    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    rem-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 100
    const/4 v2, 0x1

    .line 102
    :cond_0
    add-int v3, v2, v1

    return v3
.end method

.method private drawMonthDayLabels(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x7

    .line 106
    sget v5, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    sget v6, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 107
    .local v4, "y":I
    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v6, v6, 0x2

    div-int v2, v5, v6

    .line 108
    .local v2, "space":I
    const/4 v0, 0x0

    .local v0, "day":I
    :goto_0
    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    if-ge v0, v5, :cond_0

    .line 109
    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    rem-int v1, v5, v6

    .line 110
    .local v1, "dayOfWeek":I
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    add-int v3, v5, v6

    .line 111
    .local v3, "x":I
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 112
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "dayOfWeek":I
    .end local v3    # "x":I
    :cond_0
    return-void
.end method

.method private drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 117
    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 118
    .local v0, "x":I
    sget v2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    sget v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_LABEL_TEXT_SIZE:I

    div-int/lit8 v3, v3, 0x3

    add-int v1, v2, v3

    .line 119
    .local v1, "y":I
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    return-void
.end method

.method private findDayOffset()I
    .locals 3

    .prologue
    .line 124
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_0

    .line 125
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    add-int v0, v1, v2

    .line 129
    .local v0, "off":I
    :goto_0
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    sub-int v1, v0, v1

    return v1

    .line 127
    .end local v0    # "off":I
    :cond_0
    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    .restart local v0    # "off":I
    goto :goto_0
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 135
    .local v2, "dateInMillis":J
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 3
    .param p1, "calendarDay"    # Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .prologue
    .line 139
    iget v1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    mul-int/lit16 v2, v2, 0x2710

    add-int v0, v1, v2

    .line 140
    .local v0, "gday":I
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->minDay:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->minDay:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->maxDay:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->maxDay:I

    if-le v0, v1, :cond_2

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mOnDayClickListener:Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mOnDayClickListener:Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;->onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthView;Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    goto :goto_0
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 147
    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 151
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    sget v7, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DAY_SEPARATOR_WIDTH:I

    sub-int/2addr v6, v7

    sget v7, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    add-int v5, v6, v7

    .line 152
    .local v5, "y":I
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    mul-int/lit8 v7, v7, 0x2

    div-int v3, v6, v7

    .line 153
    .local v3, "paddingDay":I
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->findDayOffset()I

    move-result v1

    .line 154
    .local v1, "dayOffset":I
    const/4 v0, 0x1

    .line 156
    .local v0, "day":I
    :goto_0
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    if-gt v0, v6, :cond_6

    .line 157
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    add-int v4, v6, v7

    .line 158
    .local v4, "x":I
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v6, v0

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    mul-int/lit16 v7, v7, 0x2710

    add-int v2, v6, v7

    .line 159
    .local v2, "gday":I
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    if-ne v6, v0, :cond_0

    .line 160
    int-to-float v6, v4

    sget v7, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    div-int/lit8 v7, v7, 0x3

    sub-int v7, v5, v7

    int-to-float v7, v7

    sget v8, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    :cond_0
    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    if-ne v6, v0, :cond_2

    .line 162
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    :goto_1
    const-string/jumbo v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 169
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    if-ne v1, v6, :cond_1

    .line 170
    const/4 v1, 0x0

    .line 171
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    add-int/2addr v5, v6

    .line 173
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 174
    goto :goto_0

    .line 163
    :cond_2
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->minDay:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->minDay:I

    if-lt v2, v6, :cond_4

    :cond_3
    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->maxDay:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->maxDay:I

    if-le v2, v6, :cond_5

    .line 164
    :cond_4
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDisabledNumberColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 166
    :cond_5
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 175
    .end local v2    # "gday":I
    .end local v4    # "x":I
    :cond_6
    return-void
.end method

.method public getDayFromLocation(FF)Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 178
    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    .line 179
    .local v1, "padding":I
    int-to-float v3, v1

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 180
    :cond_0
    const/4 v3, 0x0

    .line 186
    :goto_0
    return-object v3

    .line 183
    :cond_1
    sget v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    div-int v2, v3, v4

    .line 184
    .local v2, "yDay":I
    int-to-float v3, v1

    sub-float v3, p1, v3

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->findDayOffset()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumDays:I

    mul-int/2addr v4, v2

    add-int v0, v3, v4

    .line 186
    .local v0, "day":I
    new-instance v3, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    invoke-direct {v3, v4, v5, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>(III)V

    goto :goto_0
.end method

.method protected initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    .line 191
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 192
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleTypeface:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 195
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 197
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    .line 199
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 200
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 203
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    .line 205
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 206
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 209
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 216
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 218
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 219
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 220
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 224
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 225
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->drawMonthDayLabels(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->drawMonthNums(Landroid/graphics/Canvas;)V

    .line 231
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    iget v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    mul-int/2addr v1, v2

    sget v2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MONTH_HEADER_SIZE:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setMeasuredDimension(II)V

    .line 235
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWidth:I

    .line 239
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getDayFromLocation(FF)Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    .line 244
    .local v0, "calendarDay":Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 247
    .end local v0    # "calendarDay":Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    :cond_0
    return v3
.end method

.method public reuse()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x6

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    .line 252
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->requestLayout()V

    .line 253
    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "monthParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 256
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string/jumbo v4, "You must specify the month and year for this view"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setTag(Ljava/lang/Object;)V

    .line 259
    const-string/jumbo v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    const-string/jumbo v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    .line 261
    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    sget v4, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MIN_HEIGHT:I

    if-ge v3, v4, :cond_1

    .line 262
    sget v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->MIN_HEIGHT:I

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    .line 264
    :cond_1
    const-string/jumbo v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    const-string/jumbo v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    .line 266
    :cond_2
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    .line 267
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    .line 268
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 270
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    .line 271
    const/4 v3, -0x1

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    .line 272
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 273
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 274
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 275
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mDayOfWeekStart:I

    .line 276
    const-string/jumbo v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    const-string/jumbo v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    .line 281
    :goto_0
    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mMonth:I

    iget v4, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Lcom/fourmob/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    .line 282
    const/4 v0, 0x0

    .local v0, "day":I
    :goto_1
    iget v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumCells:I

    if-ge v0, v3, :cond_5

    .line 283
    add-int/lit8 v1, v0, 0x1

    .line 284
    .local v1, "monthDay":I
    invoke-direct {p0, v1, v2}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->sameDay(ILandroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    iput-boolean v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    .line 286
    iput v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mToday:I

    .line 282
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "day":I
    .end local v1    # "monthDay":I
    :cond_4
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 289
    .restart local v0    # "day":I
    :cond_5
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->calculateNumRows()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mNumRows:I

    .line 290
    const-string/jumbo v3, "min_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 291
    const-string/jumbo v3, "min_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->minDay:I

    .line 292
    :cond_6
    const-string/jumbo v3, "max_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    const-string/jumbo v3, "max_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->maxDay:I

    .line 294
    :cond_7
    return-void
.end method

.method public setOnDayClickListener(Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "onDayClickListener"    # Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->mOnDayClickListener:Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;

    .line 298
    return-void
.end method
