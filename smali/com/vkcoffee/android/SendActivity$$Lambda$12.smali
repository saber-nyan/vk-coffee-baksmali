.class final synthetic Lcom/vkcoffee/android/SendActivity$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/SendActivity;

.field private final arg$2:Landroid/widget/EditText;

.field private final arg$3:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$12;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$12;->arg$2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$12;->arg$3:Landroid/widget/EditText;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/SendActivity$$Lambda$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/SendActivity$$Lambda$12;-><init>(Lcom/vkcoffee/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$12;->arg$1:Lcom/vkcoffee/android/SendActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$12;->arg$2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity$$Lambda$12;->arg$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/SendActivity;->lambda$showVideoDialog$679(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
