.class final synthetic Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Ljava/util/ArrayList;

.field private final arg$2:Lcom/vkcoffee/android/LinkSpan;

.field private final arg$3:Landroid/content/Context;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/LinkSpan;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;->arg$1:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;->arg$2:Lcom/vkcoffee/android/LinkSpan;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;->arg$3:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/ArrayList;Lcom/vkcoffee/android/LinkSpan;Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;-><init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/LinkSpan;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;->arg$1:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;->arg$2:Lcom/vkcoffee/android/LinkSpan;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;->arg$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->lambda$showMessageOptions$701(Ljava/util/ArrayList;Lcom/vkcoffee/android/LinkSpan;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
