.class Lcom/google/android/gms/internal/zzeg$zze$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzji$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeg$zze;->zzes()Lcom/google/android/gms/internal/zzeg$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzBt:Lcom/google/android/gms/internal/zzeg$zzd;

.field final synthetic zzBu:Lcom/google/android/gms/internal/zzeg$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeg$zze;Lcom/google/android/gms/internal/zzeg$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$zze$2;->zzBu:Lcom/google/android/gms/internal/zzeg$zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg$zze$2;->zzBt:Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string/jumbo v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$zze$2;->zzBt:Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg$zzd;->reject()V

    return-void
.end method
