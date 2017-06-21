.class Lcom/google/android/gms/internal/zzdg$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzn:Lorg/json/JSONObject;

.field final synthetic zzzo:Lcom/google/android/gms/internal/zzdg$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdg$1;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzo:Lcom/google/android/gms/internal/zzdg$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzn:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzo:Lcom/google/android/gms/internal/zzdg$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdg$1;->zzzl:Lcom/google/android/gms/internal/zzjp;

    const-string/jumbo v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdg$1$1;->zzzn:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "Dispatched http response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    return-void
.end method
