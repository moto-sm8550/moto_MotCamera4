.class public final Lcom/motorola/camera/detector/results/tidbit/Contact;
.super Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;
.source "Contact.java"


# static fields
.field public static final mEmailExtras:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mNumberExtras:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addressTypes:[Ljava/lang/String;

.field public addresses:[Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public emailTypes:[Ljava/lang/String;

.field public emails:[Ljava/lang/String;

.field public geo:[Ljava/lang/String;

.field public instantMessenger:Ljava/lang/String;

.field public names:[Ljava/lang/String;

.field public nicknames:[Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public org:Ljava/lang/String;

.field public phoneNumbers:[Ljava/lang/String;

.field public phoneTypes:[Ljava/lang/String;

.field public pronunciation:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public urls:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->mNumberExtras:Landroid/util/SparseArray;

    const-string v1, "phone"

    const-string v2, "phone_type"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "secondary_phone"

    const-string v3, "secondary_phone_type"

    .line 3
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "tertiary_phone"

    const-string/jumbo v4, "tertiary_phone_type"

    .line 4
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->mEmailExtras:Landroid/util/SparseArray;

    const-string v1, "email"

    const-string v5, "email_type"

    .line 6
    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "secondary_email"

    const-string v2, "secondary_email_type"

    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "tertiary_email"

    const-string/jumbo v2, "tertiary_email_type"

    .line 8
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;-><init>()V

    return-void
.end method

.method public static getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 4
    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    if-ne p1, v3, :cond_0

    .line 5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "smsto"

    invoke-static {v5, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 7
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "tel"

    invoke-static {v5, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9
    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    .line 12
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v5, v4, v2

    if-eqz v5, :cond_1

    aget-object v4, v4, v2

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_1
    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 17
    :cond_3
    new-instance p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/List;)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static validArray([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static validString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static vcardEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, "\\,;"

    .line 1
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "\\r\\n|\\r|\\n"

    const-string v1, "\\\\n"

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    array-length v0, v0

    if-le v0, v2, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v5, v1

    .line 5
    :goto_0
    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 6
    aget-object v7, v6, v5

    if-eqz v7, :cond_2

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v6, v6, v5

    const-string v7, "[^0-9]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 9
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v7, :cond_1

    array-length v8, v7

    if-le v8, v5, :cond_1

    .line 11
    aget-object v7, v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-array v4, v1, [Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    .line 16
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "vnd.android.cursor.dir/contact"

    .line 18
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "finishActivityOnSaveCompleted"

    .line 19
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_7

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_5
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 27
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v5, v2

    goto :goto_3

    :cond_7
    move v5, v1

    .line 28
    :goto_3
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_a

    move v7, v1

    .line 29
    :goto_4
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v10, v9

    if-ge v7, v10, :cond_a

    if-ge v7, v8, :cond_a

    .line 30
    aget-object v9, v9, v7

    .line 31
    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_5

    .line 32
    :cond_8
    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/Contact;->mEmailExtras:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v7, v9, :cond_9

    .line 34
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    move v5, v2

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 35
    :cond_a
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v1

    .line 36
    :goto_6
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v10, v9

    if-ge v7, v10, :cond_13

    if-ge v7, v8, :cond_13

    .line 37
    aget-object v9, v9, v7

    .line 38
    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_b

    .line 39
    :cond_b
    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/Contact;->mNumberExtras:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    array-length v10, v9

    if-ge v7, v10, :cond_12

    .line 41
    aget-object v9, v9, v7

    const/4 v10, 0x7

    if-nez v9, :cond_c

    goto :goto_8

    .line 42
    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const/4 v11, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string v12, "Work"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_7

    :cond_d
    const/4 v11, 0x3

    goto :goto_7

    :sswitch_1
    const-string v12, "Home"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_7

    :cond_e
    const/4 v11, 0x2

    goto :goto_7

    :sswitch_2
    const-string v12, "Fax"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_7

    :cond_f
    const/4 v11, 0x1

    goto :goto_7

    :sswitch_3
    const-string v12, "Mobile"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_7

    :cond_10
    const/4 v11, 0x0

    :goto_7
    packed-switch v11, :pswitch_data_0

    :goto_8
    move v9, v10

    goto :goto_9

    :pswitch_0
    move v9, v8

    goto :goto_9

    :pswitch_1
    move v9, v2

    goto :goto_9

    :pswitch_2
    const/4 v9, 0x4

    goto :goto_9

    :pswitch_3
    const/4 v9, 0x2

    :goto_9
    if-eq v9, v10, :cond_11

    .line 43
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a

    .line 44
    :cond_11
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    :goto_a
    move v5, v2

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 45
    :cond_13
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "data1"

    const-string v9, "mimetype"

    if-eqz v7, :cond_16

    move v7, v1

    .line 46
    :goto_c
    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v11, v10

    if-ge v7, v11, :cond_16

    .line 47
    aget-object v10, v10, v7

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    goto :goto_d

    .line 48
    :cond_14
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "vnd.android.cursor.item/postal-address_v2"

    .line 49
    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v10, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    array-length v12, v11

    if-ge v7, v12, :cond_15

    aget-object v11, v11, v7

    .line 52
    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "data2"

    .line 54
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v11, v11, v7

    const-string v12, "data3"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_15
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 57
    :cond_16
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 58
    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    const-string v7, "im_handle"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v5, v2

    .line 59
    :cond_17
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 60
    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    const-string v7, "company"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v5, v2

    .line 61
    :cond_18
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 62
    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    const-string v7, "job_title"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v5, v2

    .line 63
    :cond_19
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 64
    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    const-string v7, "notes"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v5, v2

    .line 65
    :cond_1a
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 66
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    array-length v10, v7

    move v11, v1

    :goto_e
    if-ge v11, v10, :cond_1c

    aget-object v12, v7, v11

    .line 67
    invoke-static {v12}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 68
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v14, "vnd.android.cursor.item/website"

    .line 69
    invoke-virtual {v13, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v12}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 71
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-virtual {v13, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 74
    :cond_1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1d

    const-string v7, "data"

    .line 75
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_1d
    const/4 v4, 0x0

    if-eqz v5, :cond_1e

    .line 76
    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 77
    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v5, v7, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_f

    :cond_1e
    move-object v5, v4

    :goto_f
    if-eqz v5, :cond_1f

    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1f
    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {p0, v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_20
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ":"

    if-eqz v3, :cond_25

    .line 82
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v7, v3, v1

    if-eqz v7, :cond_25

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    goto/16 :goto_12

    .line 83
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    .line 84
    :goto_10
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_24

    .line 85
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v9, v9, v1

    const-string v10, "mailto"

    invoke-static {v10, v9, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-array v9, v2, [Ljava/lang/String;

    .line 87
    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v10, v10, v1

    aput-object v10, v9, v1

    const-string v10, "android.intent.extra.EMAIL"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 89
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    array-length v10, v9

    if-ge v7, v10, :cond_22

    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 90
    new-instance v9, Landroid/util/Pair;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 91
    :cond_22
    new-instance v9, Landroid/util/Pair;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 92
    :cond_24
    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v7, v8, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/List;)V

    goto :goto_13

    :cond_25
    :goto_12
    move-object v7, v4

    :goto_13
    if-eqz v7, :cond_26

    .line 93
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_26
    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {p0, v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_27
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 97
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUrlAction(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v3

    goto :goto_14

    :cond_28
    move-object v3, v4

    :goto_14
    if-eqz v3, :cond_29

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_29
    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getShareAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 100
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2a
    invoke-virtual {p0, v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getCopyString(Z)Ljava/lang/String;

    move-result-object v3

    .line 102
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 103
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_2b

    .line 104
    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v7, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_15

    :cond_2b
    move-object v8, v4

    :goto_15
    if-eqz v8, :cond_2c

    .line 105
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2c
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const-string v7, "android.intent.action.VIEW"

    if-eqz v3, :cond_2d

    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2d

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 107
    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 108
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "geo:"

    .line 109
    invoke-static {v5}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v1, v6, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 112
    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v4, p0, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto/16 :goto_18

    .line 113
    :cond_2d
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :goto_16
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_30

    .line 116
    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 117
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "geo:0,0?q="

    .line 118
    invoke-static {v4}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 119
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 121
    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    array-length v8, v4

    if-ge v1, v8, :cond_2e

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 122
    new-instance v4, Landroid/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 123
    :cond_2e
    new-instance v4, Landroid/util/Pair;

    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-direct {v4, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 124
    :cond_30
    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v4, p0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/List;)V

    :cond_31
    :goto_18
    if-eqz v4, :cond_32

    .line 125
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7650833e -> :sswitch_3
        0x112fd -> :sswitch_2
        0x2268ff -> :sswitch_1
        0x293b31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCopyString(Z)Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f110057

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const p1, 0x7f110050

    .line 4
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    .line 5
    invoke-static {v0, p1, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f110051

    .line 6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    .line 7
    invoke-static {v0, p1, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110053

    .line 8
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    .line 9
    invoke-static {v0, p1, v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0x7f110065

    const-string v6, ""

    if-eqz p1, :cond_3

    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length p1, p1

    new-array v7, p1, [Ljava/lang/String;

    move v8, v3

    :goto_0
    if-ge v8, p1, :cond_2

    .line 12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v10, :cond_1

    array-length v11, v10

    if-ge v8, v11, :cond_1

    aget-object v10, v10, v8

    .line 13
    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 14
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v12, v12, v8

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v6

    .line 16
    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7f110064

    .line 17
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length p1, p1

    new-array v7, p1, [Ljava/lang/String;

    move v8, v3

    :goto_2
    if-ge v8, p1, :cond_5

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    if-eqz v10, :cond_4

    array-length v11, v10

    if-ge v8, v11, :cond_4

    aget-object v10, v10, v8

    .line 21
    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 22
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v12, v12, v8

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_4
    move-object v10, v6

    .line 24
    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    const p1, 0x7f110058

    .line 25
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const p1, 0x7f11004f

    .line 26
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-static {v0, p1, v7}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110052

    .line 27
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v0, p1, v7}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 29
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length p1, p1

    new-array v7, p1, [Ljava/lang/String;

    move v8, v3

    :goto_4
    if-ge v8, p1, :cond_8

    .line 30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    if-eqz v10, :cond_7

    array-length v11, v10

    if-ge v8, v11, :cond_7

    aget-object v10, v10, v8

    .line 31
    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 32
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 33
    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v12, v12, v8

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_7
    move-object v10, v6

    .line 34
    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    const p1, 0x7f11004c

    .line 35
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "\n"

    invoke-static {v0, p1, v7, v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const p1, 0x7f11004e

    .line 36
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    .line 37
    invoke-static {v0, p1, v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110054

    .line 38
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    .line 39
    invoke-static {v0, p1, v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11004d

    .line 40
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    .line 41
    invoke-static {v0, p1, v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110055

    .line 42
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    .line 43
    invoke-static {v0, p1, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110061

    .line 44
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    .line 45
    invoke-static {v0, p1, p0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_c

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_b

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    if-ge v3, p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_a

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 52
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getCopyString(Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    if-eqz v2, :cond_3

    array-length v2, v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    if-eqz v2, :cond_4

    array-length v2, v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    if-eqz v2, :cond_7

    array-length v2, v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move v3, v1

    :goto_a
    add-int/2addr v0, v3

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    if-eqz v2, :cond_b

    array-length v2, v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    if-eqz p0, :cond_c

    array-length v1, p0

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Contact:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getShareAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "vcard.vcf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "BEGIN:VCARD\r\n"

    .line 5
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "VERSION:3.0\r\n"

    .line 6
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ";"

    const/4 v5, 0x0

    const-string v6, "\r\n"

    if-eqz v3, :cond_5

    .line 8
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    array-length v9, v8

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 11
    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    const-string v12, " "

    .line 13
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 17
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "N:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 19
    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 22
    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    const-string v11, ","

    .line 24
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_7
    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 26
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NICKNAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, ":"

    if-eqz v3, :cond_c

    move v3, v5

    .line 28
    :goto_4
    :try_start_3
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_c

    .line 29
    aget-object v8, v8, v3

    .line 30
    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_5

    .line 31
    :cond_a
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    if-eqz v9, :cond_b

    array-length v10, v9

    if-ge v3, v10, :cond_b

    aget-object v9, v9, v3

    .line 32
    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EMAIL;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 34
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EMAIL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 35
    :cond_c
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v5

    .line 36
    :goto_6
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_f

    .line 37
    aget-object v8, v8, v3

    .line 38
    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_7

    .line 39
    :cond_d
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v9, :cond_e

    array-length v10, v9

    if-ge v3, v10, :cond_e

    aget-object v9, v9, v3

    .line 40
    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEL;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_7

    .line 44
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 45
    :cond_f
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v5

    .line 46
    :goto_8
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_12

    .line 47
    aget-object v8, v8, v3

    .line 48
    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_9

    .line 49
    :cond_10
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    if-eqz v9, :cond_11

    array-length v10, v9

    if-ge v3, v10, :cond_11

    aget-object v9, v9, v3

    .line 50
    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADR;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADR:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 55
    :cond_12
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 56
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    array-length v7, v3

    move v8, v5

    :goto_a
    if-ge v8, v7, :cond_14

    aget-object v9, v3, v8

    .line 57
    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_b

    .line 58
    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 59
    :cond_14
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    if-eqz v3, :cond_15

    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_15

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GEO:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v5, v7, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 61
    :cond_15
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ORG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    :cond_16
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TITLE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 63
    :cond_17
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BDAY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    :cond_18
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_19
    const-string p0, "END:VCARD\r\n"

    .line 66
    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 68
    new-instance p0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/x-vcard"

    .line 69
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {p0, v0}, Lcom/motorola/camera/Util;->getUriForFile(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    .line 71
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 73
    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    :cond_1a
    return-object v1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_c

    :catchall_1
    move-exception p0

    :goto_c
    if-eqz v1, :cond_1b

    .line 74
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 75
    :cond_1b
    throw p0

    :catch_0
    move-object v2, v1

    :catch_1
    if-eqz v2, :cond_1c

    .line 76
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_1c
    :goto_d
    return-object v1
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f11006c

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Contact{names="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nicknames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pronunciation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", phoneNumbers="

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emailTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instantMessenger=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    const-string v3, ", note=\'"

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    const-string v3, ", addresses="

    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", org=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    const-string v3, ", birthday=\'"

    .line 17
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    const-string v3, ", title=\'"

    .line 19
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    const-string v3, ", urls="

    .line 21
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    .line 24
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x7d

    .line 25
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
