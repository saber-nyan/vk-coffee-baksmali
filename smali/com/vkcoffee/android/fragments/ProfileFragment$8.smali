.class Lcom/vkcoffee/android/fragments/ProfileFragment$8;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->applyLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevW:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$8;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1742
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$8;->prevW:I

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 1745
    sub-int v2, p4, p2

    .line 1746
    .local v2, "w":I
    iget v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$8;->prevW:I

    if-eq v2, v3, :cond_0

    .line 1747
    const v3, 0x7f100391

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1748
    .local v0, "btn3":Landroid/widget/Button;
    const v3, 0x7f10038e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    div-int/lit8 v1, v3, 0x2

    .line 1749
    .local v1, "btnMinW":I
    const v3, 0x7f100390

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 1750
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 1751
    iput v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$8;->prevW:I

    .line 1753
    .end local v0    # "btn3":Landroid/widget/Button;
    .end local v1    # "btnMinW":I
    :cond_0
    return-void
.end method
