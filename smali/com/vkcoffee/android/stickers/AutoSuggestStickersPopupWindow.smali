.class public Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;
.super Ljava/lang/Object;
.source "AutoSuggestStickersPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
    }
.end annotation


# static fields
.field private static final POPUP_HEIGHT:I


# instance fields
.field private final mAnchorTextView:Landroid/widget/EditText;

.field private final mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

.field private mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

.field private mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

.field private mPopupShowing:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

.field private mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    sget v0, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_AUTOSUGGEST_ITEM_SIZE:I

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->POPUP_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "editText"    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "anchorView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupShowing:Z

    .line 59
    new-instance v0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$1;-><init>(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    .line 77
    const-string/jumbo v0, "AutoSuggestWindow"

    const-string/jumbo v1, "Create instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mAnchorTextView:Landroid/widget/EditText;

    .line 83
    iput-object p3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mAnchorView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mAnchorTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$2;-><init>(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/stickers/Stickers;->reloadAutoSuggestDictionaryIfNeeded(Z)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    return-object v0
.end method

.method private initializePopupWindow()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v9, 0x0

    .line 161
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 166
    .local v1, "padding":I
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 167
    .local v2, "paddingLeftRight":I
    new-instance v5, Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .line 168
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->init(Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;)V

    .line 169
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v5, v2, v1, v2, v6}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setPadding(IIII)V

    .line 171
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    new-instance v6, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$3;

    invoke-direct {v6, p0, v2}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$3;-><init>(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;I)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 181
    new-instance v0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    const v6, 0x7f02008d

    .line 182
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    const v7, 0x7f02008c

    .line 183
    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    const v8, 0x7f02008e

    .line 184
    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 186
    .local v0, "mCalloutDrawable":Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    new-instance v6, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/stickers/WrapSizeLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 189
    new-instance v5, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    .line 190
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->setCalloutPopupBackgroundDrawable(Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;)V

    .line 193
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6, v9, v9, v9}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->setPadding(IIII)V

    .line 195
    sget-boolean v5, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v5, :cond_2

    .line 196
    .local v3, "widthMode":I
    :goto_1
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    sget v6, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->POPUP_HEIGHT:I

    invoke-direct {v4, v5, v3, v6, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 198
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v5, 0x1030002

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 200
    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 204
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 206
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .end local v3    # "widthMode":I
    :cond_2
    move v3, v4

    .line 195
    goto :goto_1
.end method


# virtual methods
.method public hidePopup()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->showHidePopupWindow(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)V

    .line 253
    return-void
.end method

.method public setListener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 158
    return-void
.end method

.method public showHidePopupWindow(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)V
    .locals 9
    .param p1, "autoSuggestStickers"    # Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    .line 213
    if-nez p1, :cond_1

    .line 214
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupShowing:Z

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 216
    iput-boolean v7, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupShowing:Z

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 220
    .local v2, "location":[I
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mAnchorTextView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 221
    const-string/jumbo v3, "AutoSuggestPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Anchor location  x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->initializePopupWindow()V

    .line 227
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mLeftDeltaLayout:Lcom/vkcoffee/android/stickers/LeftDeltaLayout;

    aget v4, v2, v7

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->setDelta(I)V

    .line 230
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    if-eqz v3, :cond_3

    .line 231
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    .line 232
    .local v0, "adapter":Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
    invoke-static {v0, p1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->access$102(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    .line 233
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->access$202(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;Lcom/vkcoffee/android/stickers/StickersView$Listener;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 234
    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->notifyDataSetChanged()V

    .line 240
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupShowing:Z

    if-nez v3, :cond_0

    .line 243
    sget-boolean v3, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v3, :cond_4

    const/16 v1, 0x33

    .line 244
    .local v1, "gravity":I
    :goto_2
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mAnchorView:Landroid/view/View;

    aget v5, v2, v8

    sget v6, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->POPUP_HEIGHT:I

    sub-int/2addr v5, v6

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v1, v7, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 245
    iput-boolean v8, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mPopupShowing:Z

    goto/16 :goto_0

    .line 236
    .end local v0    # "adapter":Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
    .end local v1    # "gravity":I
    :cond_3
    new-instance v0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    invoke-direct {v0, p1, v3}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;-><init>(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    .line 237
    .restart local v0    # "adapter":Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->mStickersRecyclerView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 243
    :cond_4
    const/16 v1, 0x30

    goto :goto_2
.end method
