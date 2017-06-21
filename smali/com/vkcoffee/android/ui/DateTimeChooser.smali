.class public Lcom/vkcoffee/android/ui/DateTimeChooser;
.super Ljava/lang/Object;
.source "DateTimeChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/DateTimeChooser$OnSelectedListener;
    }
.end annotation


# instance fields
.field private act:Landroid/app/Activity;

.field private date:Ljava/util/Calendar;

.field private dateButton:Landroid/widget/TextView;

.field private listener:Lcom/vkcoffee/android/ui/DateTimeChooser$OnSelectedListener;

.field private timeButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;)V
    .locals 2
    .param p1, "_date"    # Landroid/widget/TextView;
    .param p2, "_time"    # Landroid/widget/TextView;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->date:Ljava/util/Calendar;

    .line 27
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->dateButton:Landroid/widget/TextView;

    .line 28
    iput-object p2, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->timeButton:Landroid/widget/TextView;

    .line 29
    iput-object p3, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->act:Landroid/app/Activity;

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->timeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/vkcoffee/android/ui/DateTimeChooser$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/DateTimeChooser$1;-><init>(Lcom/vkcoffee/android/ui/DateTimeChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->dateButton:Landroid/widget/TextView;

    new-instance v1, Lcom/vkcoffee/android/ui/DateTimeChooser$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/DateTimeChooser$2;-><init>(Lcom/vkcoffee/android/ui/DateTimeChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/DateTimeChooser;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/DateTimeChooser;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->date:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/DateTimeChooser;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/DateTimeChooser;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DateTimeChooser;->updateTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/DateTimeChooser;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/DateTimeChooser;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->act:Landroid/app/Activity;

    return-object v0
.end method

.method private updateTimer()V
    .locals 7

    .prologue
    .line 77
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 78
    .local v0, "date":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->dateButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/vkcoffee/android/TimeUtils;->langDateDay(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->timeButton:Landroid/widget/TextView;

    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->date:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->date:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->date:Ljava/util/Calendar;

    return-object v0
.end method

.method public setDate(I)V
    .locals 6
    .param p1, "unixtime"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DateTimeChooser;->date:Ljava/util/Calendar;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DateTimeChooser;->updateTimer()V

    .line 74
    return-void
.end method
