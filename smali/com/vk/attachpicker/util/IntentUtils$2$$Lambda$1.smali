.class final synthetic Lcom/vk/attachpicker/util/IntentUtils$2$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/util/IntentUtils$2;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/util/IntentUtils$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/util/IntentUtils$2$$Lambda$1;->arg$1:Lcom/vk/attachpicker/util/IntentUtils$2;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/util/IntentUtils$2;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/util/IntentUtils$2$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/util/IntentUtils$2$$Lambda$1;-><init>(Lcom/vk/attachpicker/util/IntentUtils$2;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/util/IntentUtils$2$$Lambda$1;->arg$1:Lcom/vk/attachpicker/util/IntentUtils$2;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/util/IntentUtils$2;->lambda$onPreExecute$160(Landroid/content/DialogInterface;)V

    return-void
.end method
