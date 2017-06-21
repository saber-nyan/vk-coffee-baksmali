.class public abstract Lcom/vk/attachpicker/widget/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public position:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/vk/attachpicker/widget/ViewHolder;, "Lcom/vk/attachpicker/widget/ViewHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;IILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "IITT;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/vk/attachpicker/widget/ViewHolder;, "Lcom/vk/attachpicker/widget/ViewHolder<TT;>;"
    .local p5, "data":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/widget/ViewHolder;->type:I

    if-eq v0, p4, :cond_1

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/vk/attachpicker/widget/ViewHolder;->initialize(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p2

    .line 29
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    iput p4, p0, Lcom/vk/attachpicker/widget/ViewHolder;->type:I

    .line 34
    :cond_1
    iput p3, p0, Lcom/vk/attachpicker/widget/ViewHolder;->position:I

    .line 35
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/vk/attachpicker/widget/ViewHolder;->update(Landroid/content/Context;IILjava/lang/Object;)V

    .line 37
    return-object p2
.end method

.method public abstract initialize(Landroid/content/Context;I)Landroid/view/View;
.end method

.method public abstract update(Landroid/content/Context;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IITT;)V"
        }
    .end annotation
.end method
