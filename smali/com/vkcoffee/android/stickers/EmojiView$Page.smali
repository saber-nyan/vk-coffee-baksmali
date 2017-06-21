.class Lcom/vkcoffee/android/stickers/EmojiView$Page;
.super Ljava/lang/Object;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation


# instance fields
.field mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

.field private mView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/EmojiView;

.field final titleIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V
    .locals 3
    .param p1    # Lcom/vkcoffee/android/stickers/EmojiView;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "titleIconId"    # I
    .param p3, "page"    # I

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Lcom/vkcoffee/android/stickers/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/stickers/EmojiView;->mColors:Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 125
    .local v0, "icon":Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;
    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->setUnselectedAlpha(I)V

    .line 126
    iput-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->titleIcon:Landroid/graphics/drawable/Drawable;

    .line 127
    sget-object v1, Lcom/vkcoffee/android/Emoji;->keyboardKeys:[[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    aget-object v1, v1, p3

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .line 128
    return-void
.end method

.method constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;I[Lcom/vkcoffee/android/Emoji$KeyboardKey;)V
    .locals 3
    .param p1    # Lcom/vkcoffee/android/stickers/EmojiView;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "titleIconId"    # I
    .param p3, "codes"    # [Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Lcom/vkcoffee/android/stickers/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/stickers/EmojiView;->mColors:Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 132
    .local v0, "icon":Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;
    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->setUnselectedAlpha(I)V

    .line 133
    iput-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->titleIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object p3, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .line 135
    return-void
.end method

.method constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;I[Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/vkcoffee/android/stickers/EmojiView;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "titleIconId"    # I
    .param p3, "codes"    # [Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Lcom/vkcoffee/android/stickers/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/stickers/EmojiView;->mColors:Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 139
    .local v0, "icon":Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;
    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->setUnselectedAlpha(I)V

    .line 140
    iput-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->titleIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->setKeysFromCodes([Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/stickers/EmojiView$Page;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/EmojiView$Page;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method getView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 145
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_0

    .line 146
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030162

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    .line 147
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/EmojiView;->access$200(Lcom/vkcoffee/android/stickers/EmojiView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 149
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v1, "layout":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->invalidate()V

    .line 153
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 154
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    invoke-direct {v0, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;[Lcom/vkcoffee/android/Emoji$KeyboardKey;)V

    .line 155
    .local v0, "adapter":Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 157
    .end local v0    # "adapter":Lcom/vkcoffee/android/stickers/EmojiView$EmojiGridAdapter;
    .end local v1    # "layout":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    return-object v2
.end method

.method invalidate()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;-><init>(Lcom/vkcoffee/android/stickers/EmojiView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 176
    :cond_0
    return-void
.end method

.method onPageChanged()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method setKeysFromCodes([Ljava/lang/String;)V
    .locals 3
    .param p1, "codes"    # [Ljava/lang/String;

    .prologue
    .line 183
    array-length v2, p1

    new-array v2, v2, [Lcom/vkcoffee/android/Emoji$KeyboardKey;

    iput-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 185
    new-instance v1, Lcom/vkcoffee/android/Emoji$KeyboardKey;

    invoke-direct {v1}, Lcom/vkcoffee/android/Emoji$KeyboardKey;-><init>()V

    .line 186
    .local v1, "key":Lcom/vkcoffee/android/Emoji$KeyboardKey;
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/vkcoffee/android/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Emoji$EmojiDrawable;

    iput-object v2, v1, Lcom/vkcoffee/android/Emoji$KeyboardKey;->drawable:Lcom/vkcoffee/android/Emoji$EmojiDrawable;

    .line 187
    aget-object v2, p1, v0

    iput-object v2, v1, Lcom/vkcoffee/android/Emoji$KeyboardKey;->input:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page;->mCodes:[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    aput-object v1, v2, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "key":Lcom/vkcoffee/android/Emoji$KeyboardKey;
    :cond_0
    return-void
.end method
