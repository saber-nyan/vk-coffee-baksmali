.class public Lcom/vkcoffee/android/VKActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VKActivity.java"


# instance fields
.field private actionModeStatusBarColor:I

.field private isResumedImpl:Z

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private stubActionBar:Landroid/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v0, :cond_0

    .line 135
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 137
    invoke-static {v4}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 43
    iput v0, p0, Lcom/vkcoffee/android/VKActivity;->actionModeStatusBarColor:I

    .line 44
    iput-boolean v0, p0, Lcom/vkcoffee/android/VKActivity;->isResumedImpl:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/VKActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 53
    new-instance v0, Lcom/vkcoffee/android/VKActivity$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKActivity$1;-><init>(Lcom/vkcoffee/android/VKActivity;)V

    iput-object v0, p0, Lcom/vkcoffee/android/VKActivity;->stubActionBar:Landroid/app/ActionBar;

    .line 42
    return-void
.end method


# virtual methods
.method public $(I)Landroid/view/View;
    .locals 1
    .param p1, "n"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/VKActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected isResumedImpl()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/vkcoffee/android/VKActivity;->isResumedImpl:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/VKActivity;->actionModeStatusBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/VKActivity;->actionModeStatusBarColor:I

    .line 322
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, -0xc4a079

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 324
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    const/16 v3, 0x4e20

    if-ne p1, v3, :cond_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "text":Ljava/lang/String;
    const-string v3, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 229
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "text":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 232
    .restart local v2    # "text":Ljava/lang/String;
    :cond_0
    const v3, 0x7f1003d6

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/VKActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, "searchView":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setTextAndSubmit(Ljava/lang/String;)V

    .line 237
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "searchView":Landroid/view/View;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 156
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    .line 157
    .local v0, "origFactory":Landroid/view/LayoutInflater$Factory2;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/VKActivity$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/VKActivity$2;-><init>(Lcom/vkcoffee/android/VKActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 167
    .end local v0    # "origFactory":Landroid/view/LayoutInflater$Factory2;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-static {p0}, Lcom/vkcoffee/android/ActUt;->add(Landroid/app/Activity;)V

    .line 169
    invoke-static {}, Lcom/vkcoffee/android/C2DM;->checkForUpdate()V

    .line 170
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 173
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/Global;->isBuggyMeizu()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 177
    :cond_2
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/VKActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 241
    invoke-super {p0, p2, p3, p4}, Landroid/support/v7/app/AppCompatActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v7

    .line 242
    .local v7, "view":Landroid/view/View;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    move-object v8, v7

    .line 308
    :goto_0
    return-object v8

    .line 245
    :cond_0
    if-nez v7, :cond_1

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v8

    invoke-virtual {v8, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v7

    .line 248
    if-nez v7, :cond_1

    const-string v8, "TextView"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const-string v9, "android.widget."

    invoke-virtual {v8, p2, v9, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 255
    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 256
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TabLayout$TabView"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 257
    :cond_2
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-virtual {p0, p4, v8}, Lcom/vkcoffee/android/VKActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 258
    .local v3, "t":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_5

    .line 289
    .end local v1    # "i":I
    .end local v3    # "t":Landroid/content/res/TypedArray;
    :cond_3
    :goto_2
    instance-of v8, v7, Landroid/support/v7/widget/Toolbar;

    if-eqz v8, :cond_4

    move-object v6, v7

    .line 290
    check-cast v6, Landroid/support/v7/widget/Toolbar;

    .line 291
    .local v6, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/VKActivity$4;

    invoke-direct {v9, p0, v6}, Lcom/vkcoffee/android/VKActivity$4;-><init>(Lcom/vkcoffee/android/VKActivity;Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .end local v6    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_4
    move-object v8, v7

    .line 308
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v8, 0x0

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "i":I
    .restart local v3    # "t":Landroid/content/res/TypedArray;
    :cond_5
    if-nez v1, :cond_9

    .line 260
    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/VKActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 261
    .local v4, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_7

    .line 267
    :goto_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    .end local v2    # "j":I
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .restart local v2    # "j":I
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_7
    const-string v8, "sans-serif-medium"

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v7

    .line 263
    check-cast v8, Landroid/widget/TextView;

    sget-object v9, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    .line 261
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 268
    .end local v2    # "j":I
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_9
    const-string v8, "sans-serif-medium"

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v7

    .line 269
    check-cast v8, Landroid/widget/TextView;

    sget-object v9, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .end local v1    # "i":I
    .end local v3    # "t":Landroid/content/res/TypedArray;
    :cond_a
    move-object v5, v7

    .line 274
    check-cast v5, Landroid/widget/TextView;

    .line 275
    .local v5, "text":Landroid/widget/TextView;
    new-instance v8, Lcom/vkcoffee/android/VKActivity$3;

    invoke-direct {v8, p0, v5}, Lcom/vkcoffee/android/VKActivity$3;-><init>(Lcom/vkcoffee/android/VKActivity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v8, v7

    .line 286
    goto/16 :goto_0

    .line 257
    :array_0
    .array-data 4
        0x1010034
        0x7f010007
        0x10103ac
    .end array-data

    .line 260
    :array_1
    .array-data 4
        0x7f010007
        0x10103ac
    .end array-data
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/vkcoffee/android/VKActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v1}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 182
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10001b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 183
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 184
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    invoke-virtual {v1, v0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 186
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 187
    invoke-static {p0}, Lcom/vkcoffee/android/ActUt;->remove(Landroid/app/Activity;)V

    .line 188
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 192
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKActivity;->onBackPressed()V

    .line 195
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/VKActivity;->isResumedImpl:Z

    .line 201
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->onActivityPaused()V

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VKActivity;->isResumedImpl:Z

    .line 207
    invoke-static {p0}, Lcom/vkcoffee/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 208
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 212
    invoke-static {p0}, Lru/mail/android/mytracker/MRMyTracker;->onStartActivity(Landroid/app/Activity;)V

    .line 213
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 217
    invoke-static {p0}, Lru/mail/android/mytracker/MRMyTracker;->onStopActivity(Landroid/app/Activity;)V

    .line 218
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 315
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ViewUtils;->fixActionModeCallback(Landroid/support/v7/app/AppCompatActivity;Landroid/support/v7/view/ActionMode;)V

    .line 316
    return-void
.end method
