.class public final Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;
.super Ljava/lang/Object;
.source "InstrumentReportDBAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 2
    invoke-direct {v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;-><init>()V

    .line 3
    sput-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    return-void
.end method
