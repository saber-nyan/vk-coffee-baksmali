.class final synthetic Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/attachments/GeoAttachment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/attachments/GeoAttachment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/attachments/GeoAttachment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/attachments/GeoAttachment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$2;-><init>(Lcom/vkcoffee/android/attachments/GeoAttachment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/attachments/GeoAttachment;->lambda$getViewForList$190(Landroid/view/View;)V

    return-void
.end method
