.class Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/EmojiView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;[Lcom/vkcoffee/android/Emoji$KeyboardKey;)V
    .locals 0
    .param p2, "codes"    # [Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .line 271
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 265
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 280
    check-cast p1, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->bind(Lcom/vkcoffee/android/Emoji$KeyboardKey;)V

    .line 281
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 275
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;Landroid/view/View;)V

    return-object v0
.end method
