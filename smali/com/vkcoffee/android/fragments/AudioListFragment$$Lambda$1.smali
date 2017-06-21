.class final synthetic Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final arg$2:Lcom/vkcoffee/android/AudioFile;

.field private final arg$3:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;->arg$2:Lcom/vkcoffee/android/AudioFile;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;->arg$3:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;->arg$2:Lcom/vkcoffee/android/AudioFile;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$$Lambda$1;->arg$3:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->lambda$showDeleteDialog$311(Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
