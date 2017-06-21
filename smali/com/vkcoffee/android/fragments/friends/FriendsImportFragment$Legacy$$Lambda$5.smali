.class final synthetic Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

.field private final arg$2:[Landroid/accounts/Account;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;[Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$5;->arg$2:[Landroid/accounts/Account;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;[Landroid/accounts/Account;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$5;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;[Landroid/accounts/Account;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$5;->arg$2:[Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->lambda$startImportGmail$362([Landroid/accounts/Account;Landroid/content/DialogInterface;I)V

    return-void
.end method
