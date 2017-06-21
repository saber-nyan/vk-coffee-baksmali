.class Lcom/vk/attachpicker/widget/GraffitiRecyclerView$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GraffitiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/widget/GraffitiRecyclerView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/GraffitiRecyclerView;

.field final synthetic val$spanCount:I


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/GraffitiRecyclerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/GraffitiRecyclerView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vk/attachpicker/widget/GraffitiRecyclerView$1;->this$0:Lcom/vk/attachpicker/widget/GraffitiRecyclerView;

    iput p2, p0, Lcom/vk/attachpicker/widget/GraffitiRecyclerView$1;->val$spanCount:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    iget v0, p0, Lcom/vk/attachpicker/widget/GraffitiRecyclerView$1;->val$spanCount:I

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
