.class public abstract Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;
.super Landroid/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroid/support/v7/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;,
        Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;,
        Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field protected mList:Landroid/support/v7/widget/RecyclerView;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    const v0, 0x7f030140

    iput v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 48
    new-instance v0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$1;-><init>(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$2;-><init>(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    :cond_0
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 187
    return-void
.end method

.method protected bindPreferences()V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 256
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 258
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onAttached()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onBindPreferences()V

    .line 262
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected getStyledContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 122
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mInitDone:Z

    .line 123
    if-eqz p1, :cond_1

    .line 124
    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 127
    .local v1, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 133
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 67
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0101c0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 68
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 69
    .local v2, "theme":I
    if-gtz v2, :cond_0

    .line 70
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Must specify preferenceTheme in theme"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    .line 73
    new-instance v4, Landroid/support/v7/preference/PreferenceManager;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    .line 74
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 85
    return-void

    .line 80
    .end local v1    # "rootKey":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "rootKey":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 285
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    const v1, 0x7f030142

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 276
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 277
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iget-object v11, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v10, 0x0

    check-cast v10, Landroid/util/AttributeSet;

    sget-object v12, Landroid/support/v7/preference/R$styleable;->PreferenceFragmentCompat:[I

    const v13, 0x7f0101c3

    const/4 v14, 0x0

    invoke-virtual {v11, v10, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 91
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    iget v11, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 92
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 94
    .local v8, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x7f0101c0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v8, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 95
    iget v5, v8, Landroid/util/TypedValue;->resourceId:I

    .line 96
    .local v5, "theme":I
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 97
    .local v6, "themedContext":Landroid/view/ContextThemeWrapper;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 98
    .local v7, "themedInflater":Landroid/view/LayoutInflater;
    iget v10, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mLayoutResId:I

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v7, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 99
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f100369

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 100
    .local v4, "rawListContainer":Landroid/view/View;
    instance-of v10, v4, Landroid/view/ViewGroup;

    if-nez v10, :cond_0

    .line 101
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Content has view with id attribute \'R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    move-object v2, v4

    .line 103
    check-cast v2, Landroid/view/ViewGroup;

    .line 104
    .local v2, "listContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-virtual {p0, v7, v2, v0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 105
    .local v3, "listView":Landroid/support/v7/widget/RecyclerView;
    if-nez v3, :cond_1

    .line 106
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Could not create RecyclerView"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 108
    :cond_1
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 109
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-object v9
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 152
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v2, p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    .line 294
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v2, p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    .line 298
    :cond_1
    if-nez v1, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 301
    instance-of v2, p1, Lcom/vkcoffee/android/ui/ColorPreference;

    if-eqz v2, :cond_3

    .line 302
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 312
    check-cast v2, Landroid/app/DialogFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 313
    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "android.support.v7.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 316
    :cond_2
    return-void

    .line 303
    :cond_3
    instance-of v2, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v2, :cond_4

    .line 304
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/EditTextPreferenceDialogFragment;

    move-result-object v0

    .local v0, "f":Landroid/support/v14/preference/EditTextPreferenceDialogFragment;
    goto :goto_0

    .line 306
    .end local v0    # "f":Landroid/support/v14/preference/EditTextPreferenceDialogFragment;
    :cond_4
    instance-of v2, p1, Landroid/support/v7/preference/ListPreference;

    if-nez v2, :cond_5

    .line 307
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    .local v0, "f":Landroid/support/v14/preference/ListPreferenceDialogFragment;
    goto :goto_0
.end method

.method public onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    invoke-interface {v1, p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    .line 232
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    invoke-interface {v1, p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/PreferenceScreen;)Z

    .line 236
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    invoke-interface {v1, p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 216
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    invoke-interface {v1, p0, p1}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 222
    .end local v0    # "handled":Z
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 157
    .local v1, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 160
    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 139
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 145
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->setPreferences(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 173
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->postBindPreferences()V

    .line 178
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 195
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 197
    .local v1, "xmlRoot":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {v1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 199
    .local v0, "root":Landroid/support/v7/preference/Preference;
    instance-of v2, v0, Landroid/support/v7/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 200
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Preference object with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not a PreferenceScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v0    # "root":Landroid/support/v7/preference/Preference;
    :cond_0
    move-object v0, v1

    .line 206
    :cond_1
    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 207
    return-void
.end method
