.class Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Lcom/vk/attachpicker/stickers/EditorStickerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vk/attachpicker/stickers/EditorStickerView;
    .param p2, "x1"    # Lcom/vk/attachpicker/stickers/EditorStickerView$1;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiAdapter;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$500()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 389
    check-cast p1, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiAdapter;->onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;
    .param p2, "position"    # I

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file:///android_asset/emoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$500()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->update(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 393
    new-instance v0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Landroid/content/Context;)V

    return-object v0
.end method
