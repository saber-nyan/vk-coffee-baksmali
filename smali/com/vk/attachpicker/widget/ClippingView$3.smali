.class final Lcom/vk/attachpicker/widget/ClippingView$3;
.super Landroid/util/Property;
.source "ClippingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/ClippingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/vk/attachpicker/widget/ClippingView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/vk/attachpicker/widget/ClippingView;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lcom/vk/attachpicker/widget/ClippingView;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/vk/attachpicker/widget/ClippingView;->getClipRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/vk/attachpicker/widget/ClippingView;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/widget/ClippingView$3;->get(Lcom/vk/attachpicker/widget/ClippingView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/vk/attachpicker/widget/ClippingView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "object"    # Lcom/vk/attachpicker/widget/ClippingView;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/widget/ClippingView;->setClipRight(I)V

    .line 43
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/vk/attachpicker/widget/ClippingView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/widget/ClippingView$3;->set(Lcom/vk/attachpicker/widget/ClippingView;Ljava/lang/Integer;)V

    return-void
.end method
