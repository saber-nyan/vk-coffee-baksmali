.class final synthetic Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/NotificationActivity;

.field private final arg$2:Lcom/vkcoffee/android/data/UserNotification;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/NotificationActivity;Lcom/vkcoffee/android/data/UserNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/NotificationActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;->arg$2:Lcom/vkcoffee/android/data/UserNotification;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/NotificationActivity;Lcom/vkcoffee/android/data/UserNotification;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/NotificationActivity;Lcom/vkcoffee/android/data/UserNotification;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/NotificationActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;->arg$2:Lcom/vkcoffee/android/data/UserNotification;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/NotificationActivity;->lambda$onCreate$656(Lcom/vkcoffee/android/data/UserNotification;Landroid/content/DialogInterface;I)V

    return-void
.end method
