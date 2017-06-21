.class final synthetic Lcom/vkcoffee/android/SendActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/SendActivity;

.field private final arg$2:Z

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/SendActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iput-boolean p2, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$2:Z

    iput-object p3, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$4:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/SendActivity;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/SendActivity$$Lambda$1;-><init>(Lcom/vkcoffee/android/SendActivity;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iget-boolean v1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$2:Z

    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->arg$4:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/SendActivity;->lambda$processIntent$668(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
