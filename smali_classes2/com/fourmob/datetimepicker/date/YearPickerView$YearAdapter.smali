.class Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/date/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/fourmob/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p4, "years":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    .line 101
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    .line 106
    .local v0, "textViewWithCircularIndicator":Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;
    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 108
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-static {v2, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->access$000(Lcom/fourmob/datetimepicker/date/YearPickerView;Landroid/widget/TextView;)I

    move-result v1

    .line 109
    .local v1, "year":I
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-static {v2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->access$100(Lcom/fourmob/datetimepicker/date/YearPickerView;)Lcom/fourmob/datetimepicker/date/DatePickerController;

    move-result-object v2

    invoke-interface {v2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v2

    iget v2, v2, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 111
    return-object v0

    .line 109
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
