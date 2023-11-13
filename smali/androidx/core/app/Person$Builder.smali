.class public final Landroidx/core/app/Person$Builder;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mIsBot:Z

.field public mIsImportant:Z

.field public mKey:Ljava/lang/String;

.field public mName:Ljava/lang/CharSequence;

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
