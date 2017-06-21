.class public Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;
.source "PreferenceSummaryHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref",
        "<",
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemId:I

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private summary:Ljava/lang/Object;

.field private title:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;ILjava/lang/Object;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "itemId"    # I
    .param p3, "title"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->title:Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->summary:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput p2, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->itemId:I

    .line 26
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->title:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic bind(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;)V
    .locals 0
    .param p1    # Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    check-cast p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->bind(Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;)V

    return-void
.end method

.method protected bind(Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->itemId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 32
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->textTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->title:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 33
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->textSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->summary:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 34
    return-void
.end method

.method public getSummary()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->summary:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->title:Ljava/lang/Object;

    return-object v0
.end method

.method public setSummary(Ljava/lang/Object;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;
    .locals 3
    .param p1, "summary"    # Ljava/lang/Object;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->summary:Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;

    .line 48
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->textSummary:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 51
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/Object;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;
    .locals 3
    .param p1, "title"    # Ljava/lang/Object;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->title:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;

    .line 39
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;->textTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 42
    :cond_0
    return-object p0
.end method
