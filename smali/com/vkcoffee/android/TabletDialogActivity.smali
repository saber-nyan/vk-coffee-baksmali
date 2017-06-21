.class public Lcom/vkcoffee/android/TabletDialogActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "TabletDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/ui/ResulterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    }
.end annotation


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

.field private mGravity:I

.field private mInputMode:I

.field private mMaxWidth:I

.field private mMinSpacing:I

.field private mPreferredHeight:I

.field private mResulters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/ActivityResulter;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowAnimationResource:I

.field private mWindowBackgroundResource:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 41
    const/16 v0, 0x31

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mGravity:I

    .line 42
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMinSpacing:I

    .line 43
    const/high16 v0, 0x443e0000    # 760.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMaxWidth:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mPreferredHeight:I

    .line 45
    const/16 v0, 0x20

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mInputMode:I

    .line 46
    iput-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mClazz:Ljava/lang/Class;

    .line 47
    iput-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mArguments:Landroid/os/Bundle;

    .line 48
    const v0, 0x106000b

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowBackgroundResource:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowAnimationResource:I

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/TabletDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/TabletDialogActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mPreferredHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/TabletDialogActivity;)Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/TabletDialogActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    return-object v0
.end method

.method private readArgs()V
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 173
    const-string/jumbo v2, "gravity"

    iget v3, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mGravity:I

    .line 174
    const-string/jumbo v2, "min_spacing"

    iget v3, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMinSpacing:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMinSpacing:I

    .line 175
    const-string/jumbo v2, "max_width"

    iget v3, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMaxWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMaxWidth:I

    .line 176
    invoke-static {v1}, Lcom/vkcoffee/android/ui/FragmentHelper;->extractFragment(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mClazz:Ljava/lang/Class;

    .line 177
    invoke-static {v1}, Lcom/vkcoffee/android/ui/FragmentHelper;->extractArgs(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mArguments:Landroid/os/Bundle;

    .line 178
    const-string/jumbo v2, "window_background_resource"

    iget v3, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowBackgroundResource:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowBackgroundResource:I

    .line 179
    const-string/jumbo v2, "window_animation"

    iget v3, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowAnimationResource:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowAnimationResource:I

    .line 180
    const-string/jumbo v2, "input_mode"

    iget v3, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mInputMode:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mInputMode:I

    .line 181
    const-string/jumbo v2, "preferred_height"

    iget v3, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mPreferredHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mPreferredHeight:I

    .line 185
    :cond_0
    return-void
.end method

.method private setupView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 188
    new-instance v1, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    .line 189
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    const v2, 0x7f10001b

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setId(I)V

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x44000000    # 512.0f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 192
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setFitsSystemWindows(Z)V

    .line 193
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setDrawStatusBar(Z)V

    .line 194
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setStatusBarColor(I)V

    .line 195
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setClipToPadding(Z)V

    .line 196
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setSystemUiVisibility(I)V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/TabletDialogActivity;->setContentView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1000dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "textView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowBackgroundResource:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 211
    return-void
.end method


# virtual methods
.method protected adjustSize(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "isTablet"    # Z

    .prologue
    .line 106
    if-eqz p3, :cond_2

    .line 107
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mPreferredHeight:I

    if-ltz v0, :cond_0

    .line 108
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "decorView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v0, Lcom/vkcoffee/android/TabletDialogActivity$1;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/TabletDialogActivity$1;-><init>(Lcom/vkcoffee/android/TabletDialogActivity;Landroid/view/View;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 126
    .end local v2    # "decorView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 127
    .local v6, "dm":Landroid/util/DisplayMetrics;
    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 128
    .local v8, "width":I
    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 129
    .local v7, "height":I
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMinSpacing:I

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v8, v0

    .line 130
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMaxWidth:I

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 131
    iput v8, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 132
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mPreferredHeight:I

    if-ltz v0, :cond_1

    .line 133
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mPreferredHeight:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mContentView:Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->getInsetTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 135
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mInputMode:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 136
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mGravity:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mInputMode:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 140
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "height":I
    .end local v8    # "width":I
    :cond_2
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowAnimationResource:I

    if-eqz v0, :cond_3

    .line 141
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowAnimationResource:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 143
    :cond_3
    return-void
.end method

.method protected final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method protected final getGravity()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mGravity:I

    return v0
.end method

.method protected final getMaxWidth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMaxWidth:I

    return v0
.end method

.method protected final getMinSpacing()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mMinSpacing:I

    return v0
.end method

.method protected final getWindowBackgroundResource()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mWindowBackgroundResource:I

    return v0
.end method

.method public interceptBack()Z
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10001b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 97
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkcoffee/android/fragments/BackListener;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/vkcoffee/android/fragments/BackListener;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/vkcoffee/android/fragments/BackListener;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mResulters:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mResulters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ActivityResulter;

    .line 218
    .local v0, "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    invoke-interface {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/ActivityResulter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 221
    .end local v0    # "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->interceptBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->onBackPressed()V

    .line 72
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity;->adjustSize(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->readArgs()V

    .line 56
    invoke-direct {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->setupView()V

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/TabletDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity;->adjustSize(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mClazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mClazz:Ljava/lang/Class;

    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/TabletDialogActivity;->start(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 61
    :cond_0
    return-void
.end method

.method public registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mResulters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mResulters:Ljava/util/List;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public start(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/FragmentHelper;->replaceWithBackStack(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;

    .line 76
    return-void
.end method

.method public unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mResulters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    return-void
.end method
