.class final synthetic Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$35;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private final arg$1:[Z


# direct methods
.method private constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$35;->arg$1:[Z

    return-void
.end method

.method public static lambdaFactory$([Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$35;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$35;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$35;->arg$1:[Z

    invoke-static {v0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$editFriendLists$578([ZLandroid/content/DialogInterface;IZ)V

    return-void
.end method
