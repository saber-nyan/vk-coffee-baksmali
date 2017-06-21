.class public Lcom/fourmob/datetimepicker/date/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field public static LIST_TOP_OFFSET:I


# instance fields
.field protected mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

.field protected mContext:Landroid/content/Context;

.field private final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDaysPerWeek:I

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mNumWeeks:I

.field private mPerformingScroll:Z

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

.field protected mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

.field protected mShowWeekNumber:Z

.field protected mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datePickerController"    # Lcom/fourmob/datetimepicker/date/DatePickerController;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 19
    const/4 v0, 0x7

    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mDaysPerWeek:I

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mFriction:F

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x6

    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mNumWeeks:I

    .line 25
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 26
    new-instance v0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;-><init>(Lcom/fourmob/datetimepicker/date/DayPickerView;)V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    .line 27
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .line 28
    iput-boolean v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mShowWeekNumber:Z

    .line 29
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .line 33
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 34
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0, p0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;)V

    .line 35
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setDrawSelectorOnTop(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->init(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onDateChanged()V

    .line 39
    return-void
.end method


# virtual methods
.method public getMostVisiblePosition()I
    .locals 11

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 43
    .local v3, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getHeight()I

    move-result v5

    .line 44
    .local v5, "height":I
    const/4 v6, 0x0

    .line 45
    .local v6, "maxGap":I
    const/4 v7, 0x0

    .line 46
    .local v7, "mostVisiblePosition":I
    const/4 v1, 0x0

    .line 47
    .local v1, "childIndex":I
    const/4 v0, 0x0

    .line 48
    .local v0, "bottom":I
    const/4 v2, 0x0

    .line 49
    .local v2, "childView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 50
    if-ge v0, v5, :cond_1

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 52
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v4, v8, v9

    .line 53
    .local v4, "gap":I
    if-le v4, v6, :cond_0

    .line 54
    move v7, v1

    .line 55
    move v6, v4

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v4    # "gap":I
    :cond_1
    add-int v8, v3, v7

    .line 62
    :goto_1
    return v8

    :cond_2
    add-int v8, v3, v7

    goto :goto_1
.end method

.method public goTo(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;ZZZ)Z
    .locals 3
    .param p1, "calendarDay"    # Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    .param p2, "scrollToTop"    # Z
    .param p3, "selectDay"    # Z
    .param p4, "displayMonth"    # Z

    .prologue
    .line 66
    if-eqz p3, :cond_0

    .line 67
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v1, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v1, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 70
    iget v1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    iget v2, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    add-int v0, v1, v2

    .line 71
    .local v0, "monthIndex":I
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    .line 75
    const/4 v1, 0x1

    return v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpListView()V

    .line 81
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpAdapter()V

    .line 82
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 87
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    .line 90
    :cond_0
    return-void
.end method

.method public onChange()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpAdapter()V

    .line 94
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method

.method public onDateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->goTo(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;ZZZ)Z

    .line 99
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 102
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fourmob/datetimepicker/date/SimpleMonthView;

    .line 103
    .local v0, "simpleMonthView":Lcom/fourmob/datetimepicker/date/SimpleMonthView;
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollPosition:J

    .line 106
    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scroll"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 111
    return-void
.end method

.method public postSetSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->clearFocus()V

    .line 115
    new-instance v0, Lcom/fourmob/datetimepicker/date/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView$1;-><init>(Lcom/fourmob/datetimepicker/date/DayPickerView;I)V

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->post(Ljava/lang/Runnable;)Z

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 121
    return-void
.end method

.method setFrictionIfSupported(F)V
    .locals 2
    .param p1, "friction"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFriction(F)V

    .line 153
    :cond_0
    return-void
.end method

.method protected setMonthDisplayed(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 1
    .param p1, "calendarDay"    # Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .prologue
    .line 124
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentMonthDisplayed:I

    .line 125
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->invalidateViews()V

    .line 126
    return-void
.end method

.method protected setUpAdapter()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 132
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setMinDay(I)V

    .line 133
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMaxDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setMaxDay(I)V

    .line 134
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->notifyDataSetChanged()V

    .line 135
    return-void
.end method

.method protected setUpListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setCacheColorHint(I)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setItemsCanFocus(Z)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFastScrollEnabled(Z)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    .line 143
    invoke-virtual {p0, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFadingEdgeLength(I)V

    .line 145
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mFriction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFrictionIfSupported(F)V

    .line 146
    return-void
.end method
