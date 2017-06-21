.class public Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleMonthAdapter.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    }
.end annotation


# static fields
.field protected static WEEK_7_OVERHANG_HEIGHT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field private mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

.field private maxDay:I

.field private minDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x7

    sput v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datePickerController"    # Lcom/fourmob/datetimepicker/date/DatePickerController;

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->minDay:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->maxDay:I

    .line 22
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 24
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->init()V

    .line 25
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 26
    return-void
.end method

.method private isSelectedDayInMonth(II)Z
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget v0, v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget v0, v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, -0x1

    .line 46
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 47
    check-cast v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;

    .line 54
    .local v3, "simpleMonthView":Lcom/fourmob/datetimepicker/date/SimpleMonthView;
    :goto_0
    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 55
    .local v1, "monthParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "monthParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .restart local v1    # "monthParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 58
    rem-int/lit8 v0, p1, 0xc

    .line 59
    .local v0, "month":I
    div-int/lit8 v5, p1, 0xc

    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v6}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v6

    add-int v4, v5, v6

    .line 60
    .local v4, "year":I
    const-string/jumbo v5, "SimpleMonthAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Year: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Month: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v2, -0x1

    .line 62
    .local v2, "selectedDay":I
    invoke-direct {p0, v4, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->isSelectedDayInMonth(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget v2, v5, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    .line 64
    :cond_1
    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->reuse()V

    .line 65
    const-string/jumbo v5, "selected_day"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v5, "year"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v5, "month"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v5, "week_start"

    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v6}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getFirstDayOfWeek()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v5, "min_day"

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->minDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v5, "max_day"

    iget v6, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->maxDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v3, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 72
    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->invalidate()V

    .line 73
    return-object v3

    .line 49
    .end local v0    # "month":I
    .end local v1    # "monthParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "selectedDay":I
    .end local v3    # "simpleMonthView":Lcom/fourmob/datetimepicker/date/SimpleMonthView;
    .end local v4    # "year":I
    :cond_2
    new-instance v3, Lcom/fourmob/datetimepicker/date/SimpleMonthView;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 50
    .restart local v3    # "simpleMonthView":Lcom/fourmob/datetimepicker/date/SimpleMonthView;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setClickable(Z)V

    .line 52
    invoke-virtual {v3, p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setOnDayClickListener(Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;)V

    goto/16 :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>(J)V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .line 78
    return-void
.end method

.method public onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthView;Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 0
    .param p1, "simpleMonthView"    # Lcom/fourmob/datetimepicker/date/SimpleMonthView;
    .param p2, "calendarDay"    # Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .prologue
    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->onDayTapped(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onDayTapped(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 4
    .param p1, "calendarDay"    # Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->tryVibrate()V

    .line 87
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    iget v1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iget v2, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iget v3, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    invoke-interface {v0, v1, v2, v3}, Lcom/fourmob/datetimepicker/date/DatePickerController;->onDayOfMonthSelected(III)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 89
    return-void
.end method

.method public setMaxDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->maxDay:I

    .line 102
    return-void
.end method

.method public setMinDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->minDay:I

    .line 98
    return-void
.end method

.method public setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 0
    .param p1, "calendarDay"    # Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .line 93
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method
