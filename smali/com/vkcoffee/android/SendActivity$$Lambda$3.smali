.class final synthetic Lcom/vkcoffee/android/SendActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/SendActivity;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/SendActivity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$3;->arg$2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$3;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/SendActivity;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/SendActivity$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/SendActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/SendActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$3;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$3;->arg$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/SendActivity;->lambda$sendPhoto$670(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
