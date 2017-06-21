.class Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiHolder"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private mLastCode:Lcom/vkcoffee/android/Emoji$KeyboardKey;

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/EmojiView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;Landroid/view/View;)V
    .locals 4
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x42500000    # 52.0f

    .line 300
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    .line 301
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    .line 303
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 306
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 307
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 311
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/Emoji$KeyboardKey;)V
    .locals 2
    .param p1, "code"    # Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->mLastCode:Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .line 315
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/vkcoffee/android/Emoji$KeyboardKey;->drawable:Lcom/vkcoffee/android/Emoji$EmojiDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$400(Lcom/vkcoffee/android/stickers/EmojiView;)Lcom/vkcoffee/android/data/RecentItemStore;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->mLastCode:Lcom/vkcoffee/android/Emoji$KeyboardKey;

    iget-object v1, v1, Lcom/vkcoffee/android/Emoji$KeyboardKey;->input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/RecentItemStore;->add(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$500(Lcom/vkcoffee/android/stickers/EmojiView;)Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/EmojiView;->access$500(Lcom/vkcoffee/android/stickers/EmojiView;)Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiHolder;->mLastCode:Lcom/vkcoffee/android/Emoji$KeyboardKey;

    iget-object v1, v1, Lcom/vkcoffee/android/Emoji$KeyboardKey;->input:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/stickers/EmojiView$Listener;->onEmojiSelected(Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method
