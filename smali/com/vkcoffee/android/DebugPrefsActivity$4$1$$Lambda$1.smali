.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/DebugPrefsActivity$4$1;

.field private final arg$2:Lcom/vkcoffee/android/data/VKList;

.field private final arg$3:Landroid/util/SparseArray;

.field private final arg$4:Lcom/vkcoffee/android/data/VKList;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity$4$1;Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;Lcom/vkcoffee/android/data/VKList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity$4$1;

    iput-object p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$2:Lcom/vkcoffee/android/data/VKList;

    iput-object p3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$3:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$4:Lcom/vkcoffee/android/data/VKList;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity$4$1;Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;Lcom/vkcoffee/android/data/VKList;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity$4$1;Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;Lcom/vkcoffee/android/data/VKList;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity$4$1;

    iget-object v1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$2:Lcom/vkcoffee/android/data/VKList;

    iget-object v2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$3:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->arg$4:Lcom/vkcoffee/android/data/VKList;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->lambda$success$292(Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;Lcom/vkcoffee/android/data/VKList;Landroid/content/DialogInterface;I)V

    return-void
.end method
