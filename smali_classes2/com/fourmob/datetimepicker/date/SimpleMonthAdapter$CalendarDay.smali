.class public Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
.super Ljava/lang/Object;
.source "SimpleMonthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarDay"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;

.field day:I

.field month:I

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->setTime(J)V

    .line 112
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->setDay(III)V

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->setTime(J)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    .line 124
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    .line 125
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    .line 126
    return-void
.end method

.method private setTime(J)V
    .locals 3
    .param p1, "timeInMillis"    # J

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    .line 133
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    .line 134
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    .line 135
    return-void
.end method


# virtual methods
.method public set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .locals 1
    .param p1, "calendarDay"    # Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .prologue
    .line 138
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    .line 139
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    .line 140
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    .line 141
    return-void
.end method

.method public setDay(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    .line 145
    iput p2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    .line 146
    iput p3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    .line 147
    return-void
.end method
