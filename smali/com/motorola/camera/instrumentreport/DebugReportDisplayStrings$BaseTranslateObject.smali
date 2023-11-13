.class public Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;
.super Ljava/lang/Object;
.source "DebugReportDisplayStrings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseTranslateObject"
.end annotation


# instance fields
.field public mMappedTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;->mMappedTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayString(Ljava/lang/String;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;->mMappedTag:Ljava/lang/String;

    return-object p0
.end method
