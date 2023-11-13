.class public final Lcom/google/android/material/datepicker/TimeSource;
.super Ljava/lang/Object;
.source "TimeSource.java"


# static fields
.field public static final SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;


# instance fields
.field public final fixedTimeMs:Ljava/lang/Long;

.field public final fixedTimeZone:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/TimeSource;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    return-void
.end method
