.class public Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/date/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;


# direct methods
.method protected constructor <init>(Lcom/fourmob/datetimepicker/date/DayPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fourmob/datetimepicker/date/DayPickerView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "newState"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget-object v0, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iput p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    .line 164
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget-object v0, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method
