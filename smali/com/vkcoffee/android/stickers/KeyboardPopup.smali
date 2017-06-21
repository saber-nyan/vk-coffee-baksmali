.class public Lcom/vkcoffee/android/stickers/KeyboardPopup;
.super Ljava/lang/Object;
.source "KeyboardPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;,
        Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_HIDE_POPUP:Ljava/lang/String; = "com.vkcoffee.andoroid.HIDE_EMOJI_POPUP"

.field public static final TABLET_HEIGHT:I

.field public static final TABLE_WIDTH:I

.field private static sIntentFilter:Landroid/content/IntentFilter;

.field private static final sUseFlymeHack:Z


# instance fields
.field private keyboardVisible:Z

.field private final mActivity:Landroid/app/Activity;

.field private mAnchor:Landroid/view/View;

.field private final mContentResizeRect:Landroid/graphics/Rect;

.field private final mContentView:Landroid/view/View;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHeight:I

.field private final mKeyboardRect:Landroid/graphics/Rect;

.field private mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

.field private mPopupBgColor:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mTablet:Z

.field private final mView:Landroid/view/View;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->TABLE_WIDTH:I

    .line 44
    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->TABLET_HEIGHT:I

    .line 45
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string/jumbo v1, "Flyme OS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->sUseFlymeHack:Z

    .line 56
    new-instance v0, Lcom/vkcoffee/android/stickers/KeyboardPopup$2;

    invoke-direct {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup$2;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->sIntentFilter:Landroid/content/IntentFilter;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/vkcoffee/android/stickers/KeyboardPopup$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup$1;-><init>(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->receiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentResizeRect:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardRect:Landroid/graphics/Rect;

    .line 83
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    .line 84
    iput-object p3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mView:Landroid/view/View;

    .line 85
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 88
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mTablet:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->unregisterReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/stickers/KeyboardPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/stickers/KeyboardPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/stickers/KeyboardPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public attachToAnchor(Landroid/view/View;I)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "popupBgColor"    # I

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mAnchor:Landroid/view/View;

    .line 96
    iput p2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupBgColor:I

    .line 97
    return-void
.end method

.method public getOnVisibilityChangedListener()Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->unregisterReceiver()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLayoutHasChanged()V
    .locals 7

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v6, 0x15

    const/4 v3, 0x0

    .line 210
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 211
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayWidth:I

    .line 212
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayHeight:I

    .line 215
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 216
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 217
    .local v1, "scrH":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v2, v4, :cond_0

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/vkcoffee/android/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 221
    :cond_0
    iget-boolean v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mTablet:Z

    if-eqz v2, :cond_2

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentResizeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    .line 225
    iget v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    if-le v2, v4, :cond_9

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->keyboardVisible:Z

    .line 227
    iget v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    if-le v2, v4, :cond_3

    .line 228
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "emoji"

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "kbd_height"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    :cond_3
    iget-boolean v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->keyboardVisible:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 233
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 234
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x53

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 236
    :cond_4
    iget-boolean v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->keyboardVisible:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-lez v2, :cond_5

    .line 237
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 239
    :cond_5
    iget-boolean v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->keyboardVisible:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 242
    :cond_6
    iget v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayWidth:I

    iget v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayHeight:I

    if-le v2, v3, :cond_b

    .line 243
    iget-boolean v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->keyboardVisible:Z

    if-eqz v2, :cond_a

    .line 244
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_7

    .line 248
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_8

    .line 251
    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 225
    goto/16 :goto_1

    .line 262
    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    goto/16 :goto_0

    .line 269
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    goto/16 :goto_0
.end method

.method public setOnVisibilityChangedListener(Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    .line 296
    return-void
.end method

.method public show(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v6

    if-ne p1, v6, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v6, :cond_2

    .line 109
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 110
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Lcom/vkcoffee/android/stickers/KeyboardPopup$3;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup$3;-><init>(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 117
    :cond_2
    if-eqz p1, :cond_3

    .line 118
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->unregisterReceiver()V

    .line 119
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Lcom/vkcoffee/android/stickers/KeyboardPopup;->sIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    :cond_3
    iget-boolean v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mTablet:Z

    if-nez v6, :cond_e

    .line 123
    if-eqz p1, :cond_c

    .line 124
    iget v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v7

    if-gt v6, v7, :cond_4

    .line 125
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "emoji"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kbd_height"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    .line 127
    :cond_4
    iget v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 128
    const/high16 v6, 0x43480000    # 200.0f

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    .line 130
    :cond_5
    iget-boolean v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->keyboardVisible:Z

    if-nez v6, :cond_6

    iget v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_6

    .line 131
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    .line 133
    :cond_6
    sget-boolean v6, Lcom/vkcoffee/android/stickers/KeyboardPopup;->sUseFlymeHack:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_a

    iget v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/vkcoffee/android/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v7

    sub-int v5, v6, v7

    .line 134
    .local v5, "keyboardHeight":I
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 135
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mDisplayWidth:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "bottom":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_7

    sget-boolean v6, Lcom/vkcoffee/android/stickers/KeyboardPopup;->sUseFlymeHack:Z

    if-eqz v6, :cond_9

    :cond_7
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_9

    .line 138
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/vkcoffee/android/stickers/KeyboardPopup;->sUseFlymeHack:Z

    if-eqz v6, :cond_9

    .line 139
    :cond_8
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/vkcoffee/android/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 142
    :cond_9
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x53

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 143
    iget-boolean v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->keyboardVisible:Z

    if-nez v6, :cond_b

    .line 144
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 145
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    if-eqz v6, :cond_0

    .line 146
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    invoke-interface {v6}, Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;->showHideIcon()V

    goto/16 :goto_0

    .line 133
    .end local v2    # "bottom":I
    .end local v5    # "keyboardHeight":I
    :cond_a
    iget v5, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardHeight:I

    goto :goto_1

    .line 149
    .restart local v2    # "bottom":I
    .restart local v5    # "keyboardHeight":I
    :cond_b
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    if-eqz v6, :cond_0

    .line 150
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    invoke-interface {v6}, Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;->showKeyboardIcon()V

    goto/16 :goto_0

    .line 154
    .end local v2    # "bottom":I
    .end local v5    # "keyboardHeight":I
    :cond_c
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    if-eqz v6, :cond_d

    .line 155
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mListener:Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;

    invoke-interface {v6}, Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;->showDefaultIcon()V

    .line 157
    :cond_d
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 158
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mContentView:Landroid/view/View;

    new-instance v7, Lcom/vkcoffee/android/stickers/KeyboardPopup$4;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup$4;-><init>(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 165
    :cond_e
    if-eqz p1, :cond_10

    .line 166
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v7, Lcom/vkcoffee/android/stickers/KeyboardPopup;->TABLE_WIDTH:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 167
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v7, Lcom/vkcoffee/android/stickers/KeyboardPopup;->TABLET_HEIGHT:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 168
    new-instance v1, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;

    iget v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupBgColor:I

    invoke-direct {v1, v6}, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;-><init>(I)V

    .line 169
    .local v1, "bd":Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 171
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mAnchor:Landroid/view/View;

    iget-object v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    neg-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 172
    const/4 v6, 0x2

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .local v3, "eloc":[I
    const/4 v6, 0x2

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    .line 173
    .local v0, "aloc":[I
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 175
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 176
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mKeyboardRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_f

    .line 177
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 178
    .local v4, "focus":Landroid/view/View;
    if-eqz v4, :cond_f

    .line 179
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 182
    .end local v4    # "focus":Landroid/view/View;
    :cond_f
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;

    invoke-direct {v7, p0, v3, v1, v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;-><init>(Lcom/vkcoffee/android/stickers/KeyboardPopup;[ILcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;[I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0

    .line 192
    .end local v0    # "aloc":[I
    .end local v1    # "bd":Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;
    .end local v3    # "eloc":[I
    :cond_10
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 172
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
