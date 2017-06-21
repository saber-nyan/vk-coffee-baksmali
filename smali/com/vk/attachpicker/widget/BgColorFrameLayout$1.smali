.class final Lcom/vk/attachpicker/widget/BgColorFrameLayout$1;
.super Landroid/util/Property;
.source "BgColorFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/BgColorFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/vk/attachpicker/widget/BgColorFrameLayout;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/vk/attachpicker/widget/BgColorFrameLayout;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    .prologue
    .line 19
    invoke-static {p1}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->access$000(Lcom/vk/attachpicker/widget/BgColorFrameLayout;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/widget/BgColorFrameLayout$1;->get(Lcom/vk/attachpicker/widget/BgColorFrameLayout;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/vk/attachpicker/widget/BgColorFrameLayout;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "object"    # Lcom/vk/attachpicker/widget/BgColorFrameLayout;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->setBackgroundColor(I)V

    .line 15
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/widget/BgColorFrameLayout$1;->set(Lcom/vk/attachpicker/widget/BgColorFrameLayout;Ljava/lang/Integer;)V

    return-void
.end method
