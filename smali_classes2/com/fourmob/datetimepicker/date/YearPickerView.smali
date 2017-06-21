.class public Lcom/fourmob/datetimepicker/date/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

.field private mChildSize:I

.field private final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field private mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

.field private mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datePickerController"    # Lcom/fourmob/datetimepicker/date/DatePickerController;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 28
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1, p0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateChangedListener;)V

    .line 29
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mViewSize:I

    .line 32
    sget v1, Lcom/fourmob/datetimepicker/R$dimen;->year_label_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mChildSize:I

    .line 33
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 34
    iget v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setFadingEdgeLength(I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->init(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0, p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setDividerHeight(I)V

    .line 39
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->onDateChanged()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/fourmob/datetimepicker/date/YearPickerView;Landroid/widget/TextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/date/YearPickerView;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/fourmob/datetimepicker/date/YearPickerView;)Lcom/fourmob/datetimepicker/date/DatePickerController;
    .locals 1
    .param p0, "x0"    # Lcom/fourmob/datetimepicker/date/YearPickerView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    return-object v0
.end method

.method private getYearFromTextView(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "years":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v0

    .local v0, "year":I
    :goto_0
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMaxYear()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 49
    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v2, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    sget v3, Lcom/fourmob/datetimepicker/R$layout;->year_label_text_view:I

    invoke-direct {v2, p0, p1, v3, v1}, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;-><init>(Lcom/fourmob/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    .line 52
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {p0, v2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 59
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onDateChanged()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 64
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionCentered(I)V

    .line 65
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->tryVibrate()V

    move-object v0, p2

    .line 70
    check-cast v0, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    .line 71
    .local v0, "textViewWithCircularIndicator":Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;
    if-eqz v0, :cond_2

    .line 72
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    if-eq v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 75
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 77
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 78
    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 79
    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->onYearSelected(I)V

    .line 82
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {v1}, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 84
    :cond_2
    return-void
.end method

.method public postSetSelectionCentered(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mViewSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    .line 88
    return-void
.end method

.method public postSetSelectionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 91
    new-instance v0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/fourmob/datetimepicker/date/YearPickerView$1;-><init>(Lcom/fourmob/datetimepicker/date/YearPickerView;II)V

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method
