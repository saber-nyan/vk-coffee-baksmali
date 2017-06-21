.class public Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListDialogItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRes"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->textView:Landroid/widget/TextView;

    .line 85
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->imageView:Landroid/widget/ImageView;

    .line 86
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    .prologue
    .line 90
    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->title:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 91
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->title:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->icon:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->imageView:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->icon:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->title:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->title:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->icon:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->imageView:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->icon:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->defaultIcon:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->bind(Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;)V

    return-void
.end method
