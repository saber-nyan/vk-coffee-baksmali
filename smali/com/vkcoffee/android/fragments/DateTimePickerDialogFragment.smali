.class public Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "DateTimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;
    }
.end annotation


# instance fields
.field private date:Ljava/util/Calendar;

.field private listener:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->listener:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->updateTimer()V

    return-void
.end method

.method private updateTimer()V
    .locals 7

    .prologue
    .line 42
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 46
    .local v0, "date":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f1001d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/vkcoffee/android/TimeUtils;->langDateDay(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f1001d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    .line 30
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 38
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->updateTimer()V

    .line 39
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080418

    .line 57
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08031e

    new-instance v3, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$1;-><init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)V

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800b7

    .line 66
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    .local v0, "adb":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    const v1, 0x7f08044a

    new-instance v2, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$2;-><init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f03006b

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f1001d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$3;-><init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f1001d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$4;-><init>(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->updateTimer()V

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setOnSelectedListener(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->listener:Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    .line 52
    return-void
.end method
