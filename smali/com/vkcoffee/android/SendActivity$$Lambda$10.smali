.class final synthetic Lcom/vkcoffee/android/SendActivity$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/SendActivity;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/SendActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$10;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iput p2, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$10;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/SendActivity;I)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/SendActivity$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/SendActivity$$Lambda$10;-><init>(Lcom/vkcoffee/android/SendActivity;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$10;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iget v1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$10;->arg$2:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/SendActivity;->lambda$showVideoOptions$677(ILandroid/content/DialogInterface;I)V

    return-void
.end method
