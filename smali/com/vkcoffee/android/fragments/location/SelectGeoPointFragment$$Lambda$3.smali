.class final synthetic Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/ProgressDialog;

.field private final arg$2:Lcom/vkcoffee/android/attachments/GeoAttachment;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$1:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$2:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$4:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;-><init>(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$1:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$2:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->arg$4:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->lambda$null$401(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
