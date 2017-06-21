.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final LEFT_RIGHT:I = 0x2

.field public static final RIGHT:I = 0x1

.field public static final SLIDING_CONTENT:I = 0x1

.field public static final SLIDING_WINDOW:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I = 0x0

.field public static final TOUCHMODE_NONE:I = 0x2


# instance fields
.field private mActionbarOverlay:Z

.field private mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

.field public mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

.field private mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    .line 227
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 229
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v1, "behindParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-direct {v2, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .line 231
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0, v2, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v0, "aboveParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-direct {v2, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 234
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {p0, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 237
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCustomViewAbove(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    .line 238
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    new-instance v3, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;

    invoke-direct {v3, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V

    .line 257
    return-void
.end method

.method static synthetic access$0(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method private getNavBarDimen(Ljava/lang/String;)I
    .locals 4
    .param p1, "resourceString"    # Ljava/lang/String;

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1070
    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1071
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 1072
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1074
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNavBarHeight()I
    .locals 1

    .prologue
    .line 1065
    const-string v0, "navigation_bar_height"

    invoke-direct {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getNavBarDimen(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getNavBarWidth()I
    .locals 1

    .prologue
    .line 1061
    const-string v0, "navigation_bar_width"

    invoke-direct {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getNavBarDimen(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setMyPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1038
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1040
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1051
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getNavBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1056
    .end local v0    # "manager":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1055
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V

    .line 1058
    return-void

    .line 1042
    .restart local v0    # "manager":Landroid/view/WindowManager;
    :pswitch_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getNavBarWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1045
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getNavBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1048
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getNavBarWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1040
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V

    .line 883
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 266
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;IZ)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I
    .param p3, "actionbarOverlay"    # Z

    .prologue
    .line 285
    if-eqz p2, :cond_0

    const/4 v8, 0x1

    if-eq p2, v8, :cond_0

    .line 286
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 289
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "This SlidingMenu appears to already be attached"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 292
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const v11, 0x1010054

    aput v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 294
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    packed-switch p2, :pswitch_data_0

    .line 363
    :cond_2
    :goto_0
    return-void

    .line 299
    :pswitch_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_3

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "jeremyFix"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 300
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 301
    .local v4, "decor":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 303
    .local v5, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 304
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_4

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "jeremyFix"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 305
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 306
    .local v6, "ll":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 307
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 308
    .local v7, "sb":Landroid/view/View;
    const v8, 0x7f1002c4

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 309
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 310
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-static {}, Lcom/vkcoffee/android/ViewUtils;->getStatusBarHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 312
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 314
    invoke-virtual {p0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto/16 :goto_0

    .line 299
    .end local v4    # "decor":Landroid/view/ViewGroup;
    .end local v5    # "decorChild":Landroid/view/ViewGroup;
    .end local v6    # "ll":Landroid/widget/LinearLayout;
    .end local v7    # "sb":Landroid/view/View;
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    goto :goto_1

    .line 316
    .restart local v4    # "decor":Landroid/view/ViewGroup;
    .restart local v5    # "decorChild":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 317
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    invoke-virtual {p0, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto/16 :goto_0

    .line 351
    .end local v4    # "decor":Landroid/view/ViewGroup;
    .end local v5    # "decorChild":Landroid/view/ViewGroup;
    :pswitch_1
    iput-boolean p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 353
    const v8, 0x1020002

    invoke-virtual {p1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 354
    .local v3, "contentParent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 355
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 359
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_2

    .line 360
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->clearIgnoredViews()V

    .line 899
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x1

    .line 1000
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_2

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "jeremyFix"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1001
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    if-eqz v4, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v7

    .line 1003
    :cond_1
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMyPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1006
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 1007
    .local v1, "leftPadding":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 1008
    .local v2, "rightPadding":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 1009
    .local v3, "topPadding":I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1010
    .local v0, "bottomPadding":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_3

    .line 1011
    const/16 v4, 0x200

    invoke-virtual {p0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSystemUiVisibility(I)V

    .line 1012
    :cond_3
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    if-nez v4, :cond_0

    .line 1013
    sget-object v4, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;

    const-string v5, "setting padding!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V

    goto :goto_0
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 6

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 282
    :cond_0
    return v1
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public getTouchmodeMarginThreshold()I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMarginThreshold()I

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSecondaryMenuShowing()Z
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V

    .line 892
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setAboveOffset(I)V

    .line 634
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 643
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setAboveOffset(I)V

    .line 644
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
    .locals 1
    .param p1, "t"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V

    .line 724
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setWidthOffset(I)V

    .line 614
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 624
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 625
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 712
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setScrollScale(F)V

    .line 715
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 9
    .param p1, "i"    # I

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 655
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 657
    .local v1, "display":Landroid/view/Display;
    :try_start_0
    const-class v0, Landroid/view/Display;

    .line 658
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v5, v7

    .line 659
    .local v5, "parameterTypes":[Ljava/lang/Class;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 660
    .local v4, "parameter":Landroid/graphics/Point;
    const-string v7, "getSize"

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 661
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget v6, v4, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameter":Landroid/graphics/Point;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    .local v6, "width":I
    :goto_0
    sub-int v7, v6, p1

    invoke-virtual {p0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 667
    return-void

    .line 663
    .end local v6    # "width":I
    :catch_0
    move-exception v2

    .line 664
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .restart local v6    # "width":I
    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 677
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 678
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 382
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 383
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 837
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeDegree(F)V

    .line 838
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 827
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeEnabled(Z)V

    .line 828
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 410
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 472
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMode(I)V

    .line 476
    return-void
.end method

.method public setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    .line 930
    return-void
.end method

.method public setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    .line 948
    return-void
.end method

.method public setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .line 909
    return-void
.end method

.method public setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    .line 939
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 428
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 438
    return-void
.end method

.method public setSecondaryOnOpenListner(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .line 920
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 856
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 873
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 874
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 865
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 846
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 847
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowWidth(I)V

    .line 819
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 810
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 456
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x1

    .line 492
    if-eqz p1, :cond_0

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 495
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 503
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 500
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 501
    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 133
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->invalidate()V

    .line 135
    return-void
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 743
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 744
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setTouchMode(I)V

    .line 749
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 759
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 760
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setTouchMode(I)V

    .line 765
    return-void
.end method

.method public setTouchmodeMarginThreshold(I)V
    .locals 1
    .param p1, "touchmodeMarginThreshold"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMarginThreshold(I)V

    .line 703
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    .line 544
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 552
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 553
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V

    .line 510
    return-void
.end method

.method public showMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 518
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 519
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showSecondaryMenu(Z)V

    .line 527
    return-void
.end method

.method public showSecondaryMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 536
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 537
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    .line 560
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V

    goto :goto_0
.end method
