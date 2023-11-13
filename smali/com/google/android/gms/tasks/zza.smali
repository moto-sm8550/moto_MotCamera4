.class public final Lcom/google/android/gms/tasks/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/tasks/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzs;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzc()Z

    return-void
.end method
