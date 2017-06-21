.class Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaskAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final masks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p2, "recentStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;>;"
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->masks:Ljava/util/ArrayList;

    .line 370
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->masks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 364
    check-cast p1, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;
    .param p2, "position"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->masks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;

    iget-object v1, v0, Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->masks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;

    iget v0, v0, Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;->id:I

    invoke-virtual {p1, v1, v0}, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->bind(Ljava/lang/String;I)V

    .line 380
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 374
    new-instance v0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$400(Lcom/vk/attachpicker/stickers/EditorStickerView;)Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V

    return-object v0
.end method
