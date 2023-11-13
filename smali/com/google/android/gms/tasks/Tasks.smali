.class public final Lcom/google/android/gms/tasks/Tasks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# direct methods
.method public static forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/zzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/tasks/zzw;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    return-object v0
.end method
