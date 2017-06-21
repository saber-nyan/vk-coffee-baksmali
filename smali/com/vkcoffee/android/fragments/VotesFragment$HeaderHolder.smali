.class Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;
.super Ljava/lang/Object;
.source "VotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/VotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderHolder"
.end annotation


# instance fields
.field private mBalance:Landroid/widget/TextView;

.field private mRequired:Landroid/widget/TextView;

.field private mRequiredLabel:Landroid/widget/TextView;

.field private mRoot:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/VotesFragment$1;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRoot:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mBalance:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f100273

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequired:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f100272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequiredLabel:Landroid/widget/TextView;

    .line 311
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 312
    return-object p0
.end method

.method public setData(II)Landroid/view/View;
    .locals 8
    .param p1, "balance"    # I
    .param p2, "requiredBalance"    # I

    .prologue
    const v7, 0x7f0e0003

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mBalance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mBalance:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    if-lez p2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequired:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequired:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequired:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequiredLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRoot:Landroid/view/View;

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequired:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$HeaderHolder;->mRequiredLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
