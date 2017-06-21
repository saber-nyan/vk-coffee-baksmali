.class public Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
.super Lcom/vkcoffee/android/fragments/SuggestionsFragment;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;,
        Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;,
        Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;,
        Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;,
        Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FACEBOOK_RESULT:I = 0x65

.field public static final GMAIL_ERROR_RESULT:I = 0x67

.field public static final GPLUS_ERROR_RESULT:I = 0x66


# instance fields
.field private currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private fbCallbackMgr:Lcom/facebook/CallbackManager;

.field private fbReqCode:I

.field private gmailAccount:Landroid/accounts/Account;

.field private importItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private importedContacts:Z

.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/facebook/CallbackManager;)Lcom/facebook/CallbackManager;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/facebook/AccessToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Lcom/facebook/AccessToken;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importFacebook(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->fbReqCode:I

    return p1
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->updateItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importContacts()V

    return-void
.end method

.method private doImport(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "myId"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "usrs":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 451
    .local v1, "u":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, v1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "external_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    .end local v1    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/api/account/AccountLookupContacts;

    invoke-direct {v2, v0, p3, p2}, Lcom/vkcoffee/android/api/account/AccountLookupContacts;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;

    invoke-direct {v3, p0, p0, p1, p3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$6;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Landroid/app/Fragment;Ljava/util/List;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/account/AccountLookupContacts;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 542
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->forceHTTPS(Z)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 543
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 559
    return-void
.end method

.method private importContacts()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 325
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 445
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 446
    return-void
.end method

.method private importFacebook(Lcom/facebook/AccessToken;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/AccessToken;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 804
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$11;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/facebook/AccessToken;)V

    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 847
    return-void
.end method

.method private importGmail(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "acc"    # Landroid/accounts/Account;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->gmailAccount:Landroid/accounts/Account;

    .line 673
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Landroid/accounts/Account;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 748
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 749
    return-void
.end method

.method private importGoogle()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method private openNearby()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;-><init>()V

    .line 278
    .local v0, "fragment":Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "nearby_dlg"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private openSearch()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, "args":Landroid/os/Bundle;
    const-class v1, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method private startImportContacts()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "agreed_import_contacts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    .line 289
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importContacts()V

    .line 321
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 293
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080520

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    new-instance v2, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startImportFacebook()V
    .locals 5

    .prologue
    .line 752
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 755
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 756
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    .line 757
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$9;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 778
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$10;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$10;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 799
    .local v0, "act":Landroid/app/Activity;
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "email"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "user_birthday"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 800
    return-void
.end method

.method private startImportGmail()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string/jumbo v5, "com.google"

    invoke-virtual {v3, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 638
    .local v1, "accs":[Landroid/accounts/Account;
    array-length v3, v1

    if-nez v3, :cond_0

    .line 639
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080165

    .line 640
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0802e7

    .line 641
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08031e

    const/4 v5, 0x0

    .line 642
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 643
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 669
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 647
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    const-string/jumbo v5, "https://play.google.com/store/apps/details?id=com.google.android.gms"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 650
    :cond_1
    array-length v3, v1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 651
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 652
    aget-object v3, v1, v4

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    goto :goto_0

    .line 654
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, v1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 656
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 658
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08026e

    .line 659
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-array v3, v4, [Ljava/lang/String;

    .line 660
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$7;

    invoke-direct {v4, p0, v1}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$7;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;[Landroid/accounts/Account;)V

    invoke-virtual {v5, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 667
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startImportGoogle()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method private updateItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 102
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;

    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 104
    .local v0, "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f080522

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 105
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0802dd

    :goto_0
    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 106
    const v1, 0x7f0201f7

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 107
    const/4 v1, 0x0

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 108
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 119
    .restart local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f080528

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 120
    const v1, 0x7f080529

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 121
    const v1, 0x7f0201f9

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 122
    const/4 v1, 0x3

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 123
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 126
    .restart local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f080526

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 127
    const v1, 0x7f080527

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 128
    const v1, 0x7f0201f8

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 129
    const/4 v1, 0x2

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 130
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 133
    .restart local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f080524

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 134
    const v1, 0x7f080525

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 135
    const v1, 0x7f0201fb

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 136
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 137
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;

    .end local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    .line 140
    .restart local v0    # "item":Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;
    const v1, 0x7f08052c

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->titleRes:I

    .line 141
    const v1, 0x7f08052d

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->descRes:I

    .line 142
    const v1, 0x7f0201fa

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->imgRes:I

    .line 143
    const/4 v1, 0x5

    iput v1, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$Item;->type:I

    .line 144
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 147
    return-void

    .line 105
    :cond_0
    const v1, 0x7f080523

    goto/16 :goto_0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    new-instance v0, Lcom/vkcoffee/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/MergeAdapter;-><init>()V

    .line 217
    .local v0, "m":Lcom/vkcoffee/android/ui/MergeAdapter;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    :cond_1
    return-object v0
.end method

.method protected getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    new-instance v0, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;-><init>()V

    .line 231
    .local v0, "m":Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->addAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V

    .line 234
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$TitleItemImageLoaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->addAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V

    .line 235
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->addAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V

    .line 236
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$ImportTypesImageAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/MergeImageLoaderAdapter;->addAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V

    .line 239
    :cond_1
    return-object v0
.end method

.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGetRecommendations;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 193
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 850
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_3

    .line 853
    if-ne p2, v1, :cond_2

    .line 854
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->gmailAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importGmail(Landroid/accounts/Account;)V

    goto :goto_0

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto :goto_0

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/SuggestionsActivity;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importedContacts:Z

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startImportContacts()V

    .line 164
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "from_signup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 211
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "from_signup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 204
    :cond_1
    return-void
.end method

.method protected onItemClick(IJLjava/lang/Object;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "id"    # J
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v2, 0x77359400

    .line 244
    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 245
    sub-long v2, p2, v2

    long-to-int v0, v2

    .line 246
    .local v0, "svc":I
    packed-switch v0, :pswitch_data_0

    .line 269
    .end local v0    # "svc":I
    :goto_0
    return-void

    .line 248
    .restart local v0    # "svc":I
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startImportContacts()V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startImportGoogle()V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startImportFacebook()V

    goto :goto_0

    .line 257
    :pswitch_3
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->startImportGmail()V

    goto :goto_0

    .line 260
    :pswitch_4
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->openSearch()V

    goto :goto_0

    .line 263
    :pswitch_5
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->openNearby()V

    goto :goto_0

    .line 267
    .end local v0    # "svc":I
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    long-to-int v2, p2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
