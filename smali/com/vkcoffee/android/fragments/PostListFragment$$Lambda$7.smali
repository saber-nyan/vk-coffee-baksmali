.class final synthetic Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final arg$1:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$7;->arg$1:Landroid/webkit/WebView;

    return-void
.end method

.method public static lambdaFactory$(Landroid/webkit/WebView;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$7;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$7;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$7;->arg$1:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->lambda$performPostAction$338(Landroid/webkit/WebView;Landroid/content/DialogInterface;)V

    return-void
.end method
